resource "aws_s3outposts_endpoint" "name" {
  outpost_id = string (Required)
  security_group_id = string (Required)
  subnet_id = string (Required)
  access_type = string (Optional, Computed)
  arn = string (Computed)
  cidr_block = string (Computed)
  creation_time = string (Computed)
  customer_owned_ipv4_pool = string (Optional)
  id = string (Optional, Computed)
  network_interfaces = ['set', ['object', {'network_interface_id': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
