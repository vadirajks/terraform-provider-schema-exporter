resource "aws_pinpoint_gcm_channel" "name" {
  application_id = string (Required)
  api_key = string (Optional)
  default_authentication_method = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  service_json = string (Optional)
}
