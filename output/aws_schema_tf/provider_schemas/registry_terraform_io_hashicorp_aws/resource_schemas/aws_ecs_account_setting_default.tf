resource "aws_ecs_account_setting_default" "name" {
  name = string (Required)
  value = string (Required)
  id = string (Optional, Computed)
  principal_arn = string (Computed)
  region = string (Optional, Computed)
}
