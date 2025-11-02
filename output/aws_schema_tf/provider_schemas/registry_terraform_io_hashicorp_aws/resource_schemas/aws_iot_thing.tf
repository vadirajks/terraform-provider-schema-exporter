resource "aws_iot_thing" "name" {
  name = string (Required)
  arn = string (Computed)
  attributes = ['map', 'string'] (Optional)
  default_client_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  thing_type_name = string (Optional)
  version = number (Computed)
}
