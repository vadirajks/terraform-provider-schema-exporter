data "aws_ec2_managed_prefix_list" "name" {
  address_family = string (Computed)
  arn = string (Computed)
  entries = ['set', ['object', {'cidr': 'string', 'description': 'string'}]] (Computed)
  id = string (Optional, Computed)
  max_entries = number (Computed)
  name = string (Optional, Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  version = number (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
