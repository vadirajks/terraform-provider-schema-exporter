resource "aws_opsworks_permission" "name" {
  stack_id = string (Required)
  user_arn = string (Required)
  allow_ssh = bool (Optional, Computed)
  allow_sudo = bool (Optional, Computed)
  id = string (Optional, Computed)
  level = string (Optional, Computed)
}
