module "security_group" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-security-group.git//?ref=20e107f1658bc5c8b23efce2e17406e74e6cbeae" #v5.1.2"
  count  = var.security_group.create ? 1 : 0

  create                                                   = var.security_group.create
  create_sg                                                = var.security_group.create_sg
  security_group_id                                        = var.security_group.security_group_id
  vpc_id                                                   = var.security_group.vpc_id
  name                                                     = var.security_group.name
  use_name_prefix                                          = var.security_group.use_name_prefix
  description                                              = var.security_group.description
  revoke_rules_on_delete                                   = var.security_group.revoke_rules_on_delete
  tags                                                     = var.security_group.tags
  create_timeout                                           = var.security_group.create_timeout
  delete_timeout                                           = var.security_group.delete_timeout
  ingress_rules                                            = var.security_group.ingress_rules
  ingress_with_self                                        = var.security_group.ingress_with_self
  ingress_with_cidr_blocks                                 = var.security_group.ingress_with_cidr_blocks
  ingress_with_ipv6_cidr_blocks                            = var.security_group.ingress_with_ipv6_cidr_blocks
  ingress_with_source_security_group_id                    = var.security_group.ingress_with_source_security_group_id
  ingress_cidr_blocks                                      = var.security_group.ingress_cidr_blocks
  ingress_ipv6_cidr_blocks                                 = var.security_group.ingress_ipv6_cidr_blocks
  ingress_prefix_list_ids                                  = var.security_group.ingress_prefix_list_ids
  ingress_with_prefix_list_ids                             = var.security_group.ingress_with_prefix_list_ids
  computed_ingress_rules                                   = var.security_group.computed_ingress_rules
  computed_ingress_with_self                               = var.security_group.computed_ingress_with_self
  computed_ingress_with_cidr_blocks                        = var.security_group.computed_ingress_with_cidr_blocks
  computed_ingress_with_ipv6_cidr_blocks                   = var.security_group.computed_ingress_with_ipv6_cidr_blocks
  computed_ingress_with_source_security_group_id           = var.security_group.computed_ingress_with_source_security_group_id
  computed_ingress_with_prefix_list_ids                    = var.security_group.computed_ingress_with_prefix_list_ids
  number_of_computed_ingress_rules                         = var.security_group.number_of_computed_ingress_rules
  number_of_computed_ingress_with_self                     = var.security_group.number_of_computed_ingress_with_self
  number_of_computed_ingress_with_cidr_blocks              = var.security_group.number_of_computed_ingress_with_cidr_blocks
  number_of_computed_ingress_with_ipv6_cidr_blocks         = var.security_group.number_of_computed_ingress_with_ipv6_cidr_blocks
  number_of_computed_ingress_with_source_security_group_id = var.security_group.number_of_computed_ingress_with_source_security_group_id
  number_of_computed_ingress_with_prefix_list_ids          = var.security_group.number_of_computed_ingress_with_prefix_list_ids
  egress_rules                                             = var.security_group.egress_rules
  egress_with_self                                         = var.security_group.egress_with_self
  egress_with_cidr_blocks                                  = var.security_group.egress_with_cidr_blocks
  egress_with_ipv6_cidr_blocks                             = var.security_group.egress_with_ipv6_cidr_blocks
  egress_with_source_security_group_id                     = var.security_group.egress_with_source_security_group_id
  egress_with_prefix_list_ids                              = var.security_group.egress_with_prefix_list_ids
  egress_cidr_blocks                                       = var.security_group.egress_cidr_blocks
  egress_ipv6_cidr_blocks                                  = var.security_group.egress_ipv6_cidr_blocks
  egress_prefix_list_ids                                   = var.security_group.egress_prefix_list_ids
  computed_egress_rules                                    = var.security_group.computed_egress_rules
  computed_egress_with_self                                = var.security_group.computed_egress_with_self
  computed_egress_with_cidr_blocks                         = var.security_group.computed_egress_with_cidr_blocks
  computed_egress_with_ipv6_cidr_blocks                    = var.security_group.computed_egress_with_ipv6_cidr_blocks
  computed_egress_with_source_security_group_id            = var.security_group.computed_egress_with_source_security_group_id
  computed_egress_with_prefix_list_ids                     = var.security_group.computed_egress_with_prefix_list_ids
  number_of_computed_egress_rules                          = var.security_group.number_of_computed_egress_rules
  number_of_computed_egress_with_self                      = var.security_group.number_of_computed_egress_with_self
  number_of_computed_egress_with_cidr_blocks               = var.security_group.number_of_computed_egress_with_cidr_blocks
  number_of_computed_egress_with_ipv6_cidr_blocks          = var.security_group.number_of_computed_egress_with_ipv6_cidr_blocks
  number_of_computed_egress_with_source_security_group_id  = var.security_group.number_of_computed_egress_with_source_security_group_id
  number_of_computed_egress_with_prefix_list_ids           = var.security_group.number_of_computed_egress_with_prefix_list_ids
  putin_khuylo                                             = var.security_group.putin_khuylo
}


module "autoscaling" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-autoscaling.git//?ref=173e7613909bf0ee183ca635e3d08a4ac70238e3" #v7.4.1

  create                               = var.autoscaling.create
  ignore_desired_capacity_changes      = var.autoscaling.ignore_desired_capacity_changes
  name                                 = var.autoscaling.name
  use_name_prefix                      = var.autoscaling.use_name_prefix
  instance_name                        = var.autoscaling.instance_name
  launch_template_id                   = var.autoscaling.launch_template_id
  launch_template_version              = var.autoscaling.launch_template_version
  availability_zones                   = var.autoscaling.availability_zones
  vpc_zone_identifier                  = var.autoscaling.vpc_zone_identifier
  min_size                             = var.autoscaling.min_size
  max_size                             = var.autoscaling.max_size
  desired_capacity                     = var.autoscaling.desired_capacity
  desired_capacity_type                = var.autoscaling.desired_capacity_type
  capacity_rebalance                   = var.autoscaling.capacity_rebalance
  min_elb_capacity                     = var.autoscaling.min_elb_capacity
  wait_for_elb_capacity                = var.autoscaling.wait_for_elb_capacity
  wait_for_capacity_timeout            = var.autoscaling.wait_for_capacity_timeout
  default_cooldown                     = var.autoscaling.default_cooldown
  default_instance_warmup              = var.autoscaling.default_instance_warmup
  protect_from_scale_in                = var.autoscaling.protect_from_scale_in
  load_balancers                       = var.autoscaling.load_balancers
  target_group_arns                    = var.autoscaling.target_group_arns
  placement_group                      = var.autoscaling.placement_group
  health_check_type                    = var.autoscaling.health_check_type
  health_check_grace_period            = var.autoscaling.health_check_grace_period
  force_delete                         = var.autoscaling.force_delete
  termination_policies                 = var.autoscaling.termination_policies
  suspended_processes                  = var.autoscaling.suspended_processes
  max_instance_lifetime                = var.autoscaling.max_instance_lifetime
  enabled_metrics                      = var.autoscaling.enabled_metrics
  metrics_granularity                  = var.autoscaling.metrics_granularity
  service_linked_role_arn              = var.autoscaling.service_linked_role_arn
  initial_lifecycle_hooks              = var.autoscaling.initial_lifecycle_hooks
  instance_refresh                     = var.autoscaling.instance_refresh
  use_mixed_instances_policy           = var.autoscaling.use_mixed_instances_policy
  mixed_instances_policy               = var.autoscaling.mixed_instances_policy
  delete_timeout                       = var.autoscaling.delete_timeout
  tags                                 = var.autoscaling.tags
  warm_pool                            = var.autoscaling.warm_pool
  ebs_optimized                        = var.autoscaling.ebs_optimized
  image_id                             = var.autoscaling.image_id == "" ? jsondecode(data.aws_ssm_parameter.ecs_optimized_ami.value)["image_id"] : var.autoscaling.image_id
  instance_type                        = var.autoscaling.instance_type
  instance_requirements                = var.autoscaling.instance_requirements
  key_name                             = var.autoscaling.key_name
  user_data                            = var.autoscaling.user_data
  security_groups                      = var.security_group.create ? [module.security_group[0].security_group_id] : var.autoscaling.security_groups
  enable_monitoring                    = var.autoscaling.enable_monitoring
  metadata_options                     = var.autoscaling.metadata_options
  autoscaling_group_tags               = var.autoscaling.autoscaling_group_tags
  ignore_failed_scaling_activities     = var.autoscaling.ignore_failed_scaling_activities
  instance_maintenance_policy          = var.autoscaling.instance_maintenance_policy
  create_launch_template               = var.autoscaling.create_launch_template
  launch_template_name                 = var.autoscaling.launch_template_name
  launch_template_use_name_prefix      = var.autoscaling.launch_template_use_name_prefix
  launch_template_description          = var.autoscaling.launch_template_description
  default_version                      = var.autoscaling.default_version
  update_default_version               = var.autoscaling.update_default_version
  disable_api_termination              = var.autoscaling.disable_api_termination
  disable_api_stop                     = var.autoscaling.disable_api_stop
  instance_initiated_shutdown_behavior = var.autoscaling.instance_initiated_shutdown_behavior
  kernel_id                            = var.autoscaling.kernel_id
  ram_disk_id                          = var.autoscaling.ram_disk_id
  block_device_mappings                = var.autoscaling.block_device_mappings
  capacity_reservation_specification   = var.autoscaling.capacity_reservation_specification
  cpu_options                          = var.autoscaling.cpu_options
  credit_specification                 = var.autoscaling.credit_specification
  elastic_gpu_specifications           = var.autoscaling.elastic_gpu_specifications
  elastic_inference_accelerator        = var.autoscaling.elastic_inference_accelerator
  enclave_options                      = var.autoscaling.enclave_options
  hibernation_options                  = var.autoscaling.hibernation_options
  instance_market_options              = var.autoscaling.instance_market_options
  license_specifications               = var.autoscaling.license_specifications
  maintenance_options                  = var.autoscaling.maintenance_options
  network_interfaces                   = var.autoscaling.network_interfaces
  placement                            = var.autoscaling.placement
  private_dns_name_options             = var.autoscaling.private_dns_name_options
  tag_specifications                   = var.autoscaling.tag_specifications
  create_traffic_source_attachment     = var.autoscaling.create_traffic_source_attachment
  traffic_source_identifier            = var.autoscaling.traffic_source_identifier
  traffic_source_type                  = var.autoscaling.traffic_source_type
  create_schedule                      = var.autoscaling.create_schedule
  schedules                            = var.autoscaling.schedules
  create_scaling_policy                = var.autoscaling.create_scaling_policy
  scaling_policies                     = var.autoscaling.scaling_policies
  create_iam_instance_profile          = var.autoscaling.create_iam_instance_profile
  iam_instance_profile_arn             = var.autoscaling.iam_instance_profile_arn
  iam_instance_profile_name            = var.autoscaling.iam_instance_profile_name
  iam_role_name                        = var.autoscaling.iam_role_name
  iam_role_use_name_prefix             = var.autoscaling.iam_role_use_name_prefix
  iam_role_path                        = var.autoscaling.iam_role_path
  iam_role_description                 = var.autoscaling.iam_role_description
  iam_role_permissions_boundary        = var.autoscaling.iam_role_permissions_boundary
  iam_role_policies                    = var.autoscaling.iam_role_policies
  iam_role_tags                        = var.autoscaling.iam_role_tags
  putin_khuylo                         = var.autoscaling.putin_khuylo

}
