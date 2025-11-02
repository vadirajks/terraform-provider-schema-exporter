resource "aws_appautoscaling_scheduled_action" "name" {
  name = string (Required)
  resource_id = string (Required)
  scalable_dimension = string (Required)
  schedule = string (Required)
  service_namespace = string (Required)
  arn = string (Computed)
  end_time = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  start_time = string (Optional)
  timezone = string (Optional)

  scalable_target_action block "list" (Required) {
    max_capacity = string (Optional)
    min_capacity = string (Optional)
  }
}
