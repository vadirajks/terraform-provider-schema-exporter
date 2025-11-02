resource "aws_securityhub_action_target" "name" {
  description = string (Required)
  identifier = string (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
