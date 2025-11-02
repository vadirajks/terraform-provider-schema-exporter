data "aws_ec2_instance_type_offerings" "name" {
  id = string (Optional, Computed)
  instance_types = ['list', 'string'] (Computed)
  location_type = string (Optional)
  location_types = ['list', 'string'] (Computed)
  locations = ['list', 'string'] (Computed)
  region = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
