resource "aws_ec2_managed_prefix_list" "name" {
  address_family = string (Required)
  max_entries = number (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version = number (Computed)

  entry block "set" (Optional) {
    cidr = string (Required)
    description = string (Optional)
  }
}
