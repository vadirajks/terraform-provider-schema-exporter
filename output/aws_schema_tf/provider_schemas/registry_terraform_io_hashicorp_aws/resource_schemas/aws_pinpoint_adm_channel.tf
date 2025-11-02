resource "aws_pinpoint_adm_channel" "name" {
  application_id = string (Required)
  client_id = string (Required)
  client_secret = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
