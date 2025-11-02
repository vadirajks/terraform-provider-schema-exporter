resource "aws_chime_voice_connector_termination" "name" {
  calling_regions = ['set', 'string'] (Required)
  cidr_allow_list = ['set', 'string'] (Required)
  voice_connector_id = string (Required)
  cps_limit = number (Optional)
  default_phone_number = string (Optional)
  disabled = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
