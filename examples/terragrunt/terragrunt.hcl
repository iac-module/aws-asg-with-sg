include {
  path = find_in_parent_folders()
}
iam_role = local.account_vars.iam_role

terraform {
  source = "git::https://github.com/iac-module/aws-asg-with-sg.git?ref=v1.0.0"
}

locals {
  common_tags  = read_terragrunt_config(find_in_parent_folders("tags.hcl"))
  account_vars = read_terragrunt_config(find_in_parent_folders("account.hcl"))
  region_vars  = read_terragrunt_config(find_in_parent_folders("region.hcl"))
  region       = local.region_vars.locals.aws_region
  name         = basename(get_terragrunt_dir())
  cluster_name = "${local.account_vars.locals.env}-ecs-0001"
  user_data    = <<-EOT
        #!/bin/bash

        cat <<'EOF' >> /etc/ecs/ecs.config
        ECS_CLUSTER=${local.cluster_name}
        ECS_LOGLEVEL=debug
        ECS_CONTAINER_INSTANCE_TAGS=${jsonencode(local.common_tags.locals.common_tags)}
        ECS_ENABLE_TASK_IAM_ROLE=true
        ECS_ENABLE_SPOT_INSTANCE_DRAINING=true
        EOF
      EOT
}

dependency "vpc" {
  config_path = find_in_parent_folders("core/vpc/${local.account_vars.locals.env_name}")
}

inputs = {
  security_group = {
    name   = local.name
    vpc_id = dependency.vpc.outputs.vpc_id
  }
  autoscaling = {
    name                            = "ecs-${local.name}"
    vpc_id                          = dependency.vpc.outputs.vpc_id
    vpc_zone_identifier             = dependency.vpc.outputs.private_subnets
    ignore_desired_capacity_changes = true
    create_iam_instance_profile     = true
    iam_role_name                   = local.name
    instance_type                   = "t3.large"
    use_mixed_instances_policy      = true
    mixed_instances_policy = {
      instances_distribution = {
        on_demand_base_capacity                  = 0
        on_demand_percentage_above_base_capacity = 0
        spot_allocation_strategy                 = "price-capacity-optimized"
      }
    }
    protect_from_scale_in = true
    user_data             = base64encode(local.user_data)
    tags                  = local.common_tags.locals.common_tags
  }
}
