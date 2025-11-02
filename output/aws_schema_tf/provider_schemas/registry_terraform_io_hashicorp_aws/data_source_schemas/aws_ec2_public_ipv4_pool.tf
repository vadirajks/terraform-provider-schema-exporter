data "aws_ec2_public_ipv4_pool" "name" {
  pool_id = string (Required)
  description = string (Computed)
  id = string (Optional, Computed)
  network_border_group = string (Computed)
  pool_address_ranges = ['list', ['object', {'address_count': 'number', 'available_address_count': 'number', 'first_address': 'string', 'last_address': 'string'}]] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  total_address_count = number (Computed)
  total_available_address_count = number (Computed)
}
