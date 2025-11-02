resource "aws_chime_voice_connector_origination" "name" {
  voice_connector_id = string (Required)
  disabled = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  route block "set" (Required) {
    host = string (Required)
    priority = number (Required)
    protocol = string (Required)
    weight = number (Required)
    port = number (Optional)
  }
}
