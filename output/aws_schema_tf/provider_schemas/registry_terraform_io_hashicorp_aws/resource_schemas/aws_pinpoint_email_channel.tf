resource "aws_pinpoint_email_channel" "name" {
  application_id = string (Required)
  from_address = string (Required)
  identity = string (Required)
  configuration_set = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  messages_per_second = number (Computed)
  orchestration_sending_role_arn = string (Optional)
  region = string (Optional, Computed)
  role_arn = string (Optional)
}
