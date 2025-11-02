resource "aws_service_discovery_instance" "name" {
  attributes = ['map', 'string'] (Required)
  instance_id = string (Required)
  service_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
