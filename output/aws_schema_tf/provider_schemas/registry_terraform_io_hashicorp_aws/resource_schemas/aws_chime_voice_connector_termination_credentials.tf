resource "aws_chime_voice_connector_termination_credentials" "name" {
  voice_connector_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  credentials block "set" (Required) {
    password = string (Required)
    username = string (Required)
  }
}
