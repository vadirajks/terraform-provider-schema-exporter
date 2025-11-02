resource "aws_autoscaling_lifecycle_hook" "name" {
  autoscaling_group_name = string (Required)
  lifecycle_transition = string (Required)
  name = string (Required)
  default_result = string (Optional, Computed)
  heartbeat_timeout = number (Optional)
  id = string (Optional, Computed)
  notification_metadata = string (Optional)
  notification_target_arn = string (Optional)
  region = string (Optional, Computed)
  role_arn = string (Optional)
}
