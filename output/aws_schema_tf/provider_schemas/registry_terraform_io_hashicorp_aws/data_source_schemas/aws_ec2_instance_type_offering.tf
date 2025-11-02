data "aws_ec2_instance_type_offering" "name" {
  id = string (Optional, Computed)
  instance_type = string (Computed)
  location = string (Computed)
  location_type = string (Optional)
  preferred_instance_types = ['list', 'string'] (Optional)
  region = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
