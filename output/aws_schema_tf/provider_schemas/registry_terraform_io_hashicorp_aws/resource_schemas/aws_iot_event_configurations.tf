resource "aws_iot_event_configurations" "name" {
  event_configurations = ['map', 'bool'] (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
