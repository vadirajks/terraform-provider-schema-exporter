resource "aws_config_configuration_recorder_status" "name" {
  is_enabled = bool (Required)
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
