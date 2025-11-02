resource "aws_opsworks_user_profile" "name" {
  ssh_username = string (Required)
  user_arn = string (Required)
  allow_self_management = bool (Optional)
  id = string (Optional, Computed)
  ssh_public_key = string (Optional)
}
