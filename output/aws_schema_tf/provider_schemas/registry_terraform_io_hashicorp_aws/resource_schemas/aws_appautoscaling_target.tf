resource "aws_appautoscaling_target" "name" {
  max_capacity = number (Required)
  min_capacity = number (Required)
  resource_id = string (Required)
  scalable_dimension = string (Required)
  service_namespace = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  role_arn = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  suspended_state block "list" (Optional) {
    dynamic_scaling_in_suspended = bool (Optional)
    dynamic_scaling_out_suspended = bool (Optional)
    scheduled_scaling_suspended = bool (Optional)
  }
}
