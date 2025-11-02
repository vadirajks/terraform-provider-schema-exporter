resource "aws_codebuild_fleet" "name" {
  base_capacity = number (Required)
  compute_type = string (Required)
  environment_type = string (Required)
  name = string (Required)
  arn = string (Computed)
  created = string (Computed)
  fleet_service_role = string (Optional)
  id = string (Computed)
  image_id = string (Optional)
  last_modified = string (Computed)
  overflow_behavior = string (Optional, Computed)
  region = string (Optional, Computed)
  status = ['set', ['object', {'context': 'string', 'message': 'string', 'status_code': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  compute_configuration block "list" (Optional) {
    disk = number (Optional, Computed)
    instance_type = string (Optional, Computed)
    machine_type = string (Optional, Computed)
    memory = number (Optional, Computed)
    vcpu = number (Optional, Computed)
  }

  scaling_configuration block "list" (Optional) {
    desired_capacity = number (Computed)
    max_capacity = number (Optional)
    scaling_type = string (Optional)

    target_tracking_scaling_configs block "list" (Optional) {
      metric_type = string (Optional)
      target_value = number (Optional)
    }
  }

  vpc_config block "list" (Optional) {
    security_group_ids = ['set', 'string'] (Required)
    subnets = ['set', 'string'] (Required)
    vpc_id = string (Required)
  }
}
