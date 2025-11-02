resource "aws_cloudwatch_log_metric_filter" "name" {
  log_group_name = string (Required)
  name = string (Required)
  pattern = string (Required)
  apply_on_transformed_logs = bool (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  metric_transformation block "list" (Required) {
    name = string (Required)
    namespace = string (Required)
    value = string (Required)
    default_value = string (Optional)
    dimensions = ['map', 'string'] (Optional)
    unit = string (Optional)
  }
}
