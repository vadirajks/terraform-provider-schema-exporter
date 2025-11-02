data "aws_controltower_controls" "name" {
  target_identifier = string (Required)
  enabled_controls = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
