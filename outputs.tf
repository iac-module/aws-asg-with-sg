################################################################################
# Security Group
################################################################################
output "security_group_arn" {
  description = "The ARN of the security group"
  value       = try(module.security_group[0].security_group_arn, "")
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = try(module.security_group[0].security_group_id, "")
}

output "security_group_vpc_id" {
  description = "The VPC ID"
  value       = try(module.security_group[0].security_group_vpc_id, "")
}

output "security_group_owner_id" {
  description = "The owner ID"
  value       = try(module.security_group[0].security_group_owner_id, "")
}

output "security_group_name" {
  description = "The name of the security group"
  value       = try(module.security_group[0].security_group_name, "")
}

output "security_group_description" {
  description = "The description of the security group"
  value       = try(module.security_group[0].security_group_description, "")
}



################################################################################
# Launch template
################################################################################

output "launch_template_id" {
  description = "The ID of the launch template"
  value       = try(module.autoscaling.launch_template_id, null)
}

output "launch_template_arn" {
  description = "The ARN of the launch template"
  value       = try(module.autoscaling.launch_template_arn, null)
}

output "launch_template_name" {
  description = "The name of the launch template"
  value       = try(module.autoscaling.launch_template_name, null)
}

output "launch_template_latest_version" {
  description = "The latest version of the launch template"
  value       = try(module.autoscaling.launch_template_latest_version, null)
}

output "launch_template_default_version" {
  description = "The default version of the launch template"
  value       = try(module.autoscaling.launch_template_default_version, null)
}

################################################################################
# Autoscaling group
################################################################################

output "autoscaling_group_id" {
  description = "The autoscaling group id"
  value       = try(module.autoscaling.autoscaling_group_id, null)
}

output "autoscaling_group_name" {
  description = "The autoscaling group name"
  value       = try(module.autoscaling.autoscaling_group_name, null)
}

output "autoscaling_group_arn" {
  description = "The ARN for this AutoScaling Group"
  value       = try(module.autoscaling.autoscaling_group_arn, null)
}

output "autoscaling_group_min_size" {
  description = "The minimum size of the autoscale group"
  value       = try(module.autoscaling.autoscaling_group_min_size, null)
}

output "autoscaling_group_max_size" {
  description = "The maximum size of the autoscale group"
  value       = try(module.autoscaling.autoscaling_group_max_size, null)
}

output "autoscaling_group_desired_capacity" {
  description = "The number of Amazon EC2 instances that should be running in the group"
  value       = try(module.autoscaling.autoscaling_group_desired_capacity, null)
}

output "autoscaling_group_default_cooldown" {
  description = "Time between a scaling activity and the succeeding scaling activity"
  value       = try(module.autoscaling.autoscaling_group_default_cooldown, null)
}

output "autoscaling_group_health_check_grace_period" {
  description = "Time after instance comes into service before checking health"
  value       = try(module.autoscaling.autoscaling_group_health_check_grace_period, null)
}

output "autoscaling_group_health_check_type" {
  description = "EC2 or ELB. Controls how health checking is done"
  value       = try(module.autoscaling.autoscaling_group_health_check_type, null)
}

output "autoscaling_group_availability_zones" {
  description = "The availability zones of the autoscale group"
  value       = try(module.autoscaling.autoscaling_group_availability_zones, null)
}

output "autoscaling_group_vpc_zone_identifier" {
  description = "The VPC zone identifier"
  value       = try(module.autoscaling.autoscaling_group_vpc_zone_identifier, null)
}

output "autoscaling_group_load_balancers" {
  description = "The load balancer names associated with the autoscaling group"
  value       = try(module.autoscaling.autoscaling_group_load_balancers, null)
}

output "autoscaling_group_target_group_arns" {
  description = "List of Target Group ARNs that apply to this AutoScaling Group"
  value       = try(module.autoscaling.autoscaling_group_target_group_arns, null)
}

output "autoscaling_group_enabled_metrics" {
  description = "List of metrics enabled for collection"
  value       = try(module.autoscaling.autoscaling_group_enabled_metrics, null)
}

################################################################################
# Autoscaling group schedule
################################################################################

output "autoscaling_schedule_arns" {
  description = "ARNs of autoscaling group schedules"
  value       = try(module.autoscaling.autoscaling_schedule_arns, null)
}

################################################################################
# Autoscaling Policy
################################################################################

output "autoscaling_policy_arns" {
  description = "ARNs of autoscaling policies"
  value       = try(module.autoscaling.autoscaling_policy_arns, null)
}

################################################################################
# IAM Role / Instance Profile
################################################################################

output "iam_role_name" {
  description = "The name of the IAM role"
  value       = try(module.autoscaling.iam_role_name, null)
}

output "iam_role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the IAM role"
  value       = try(module.autoscaling.iam_role_arn, null)
}

output "iam_role_unique_id" {
  description = "Stable and unique string identifying the IAM role"
  value       = try(module.autoscaling.iam_role_unique_id, null)
}

output "iam_instance_profile_arn" {
  description = "ARN assigned by AWS to the instance profile"
  value       = try(module.autoscaling.iam_instance_profile_arn, null)
}

output "iam_instance_profile_id" {
  description = "Instance profile's ID"
  value       = try(module.autoscaling.iam_instance_profile_id, null)
}

output "iam_instance_profile_unique" {
  description = "Stable and unique string identifying the IAM instance profile"
  value       = try(module.autoscaling.iam_instance_profile_unique, null)
}
