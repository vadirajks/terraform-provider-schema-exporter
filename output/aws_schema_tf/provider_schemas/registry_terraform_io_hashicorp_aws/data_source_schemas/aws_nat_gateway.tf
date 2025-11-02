data "aws_nat_gateway" "name" {
  allocation_id = string (Computed)
  association_id = string (Computed)
  connectivity_type = string (Computed)
  id = string (Optional, Computed)
  network_interface_id = string (Computed)
  private_ip = string (Computed)
  public_ip = string (Computed)
  region = string (Optional, Computed)
  secondary_allocation_ids = ['list', 'string'] (Computed)
  secondary_private_ip_address_count = number (Computed)
  secondary_private_ip_addresses = ['list', 'string'] (Computed)
  state = string (Optional, Computed)
  subnet_id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
