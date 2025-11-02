resource "aws_chime_voice_connector_group" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  connector block "set" (Optional) {
    priority = number (Required)
    voice_connector_id = string (Required)
  }
}
