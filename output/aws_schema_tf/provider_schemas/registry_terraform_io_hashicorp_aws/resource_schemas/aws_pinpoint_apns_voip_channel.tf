resource "aws_pinpoint_apns_voip_channel" "name" {
  application_id = string (Required)
  bundle_id = string (Optional)
  certificate = string (Optional)
  default_authentication_method = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  private_key = string (Optional)
  region = string (Optional, Computed)
  team_id = string (Optional)
  token_key = string (Optional)
  token_key_id = string (Optional)
}
