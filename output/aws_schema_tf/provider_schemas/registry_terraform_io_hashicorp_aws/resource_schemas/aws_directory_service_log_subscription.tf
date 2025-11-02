resource "aws_directory_service_log_subscription" "name" {
  directory_id = string (Required)
  log_group_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
