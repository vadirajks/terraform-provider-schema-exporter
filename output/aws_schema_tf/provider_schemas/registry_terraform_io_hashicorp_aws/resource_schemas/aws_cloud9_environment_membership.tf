resource "aws_cloud9_environment_membership" "name" {
  environment_id = string (Required)
  permissions = string (Required)
  user_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  user_id = string (Computed)
}
