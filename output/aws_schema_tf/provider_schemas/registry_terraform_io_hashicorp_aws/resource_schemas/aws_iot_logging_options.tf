resource "aws_iot_logging_options" "name" {
  default_log_level = string (Required)
  role_arn = string (Required)
  disable_all_logs = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
