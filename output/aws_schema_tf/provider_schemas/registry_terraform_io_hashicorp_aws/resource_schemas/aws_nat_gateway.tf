resource "aws_nat_gateway" "name" {
  subnet_id = string (Required)
  allocation_id = string (Optional)
  association_id = string (Computed)
  connectivity_type = string (Optional)
  id = string (Optional, Computed)
  network_interface_id = string (Computed)
  private_ip = string (Optional, Computed)
  public_ip = string (Computed)
  region = string (Optional, Computed)
  secondary_allocation_ids = ['set', 'string'] (Optional, Computed)
  secondary_private_ip_address_count = number (Optional, Computed)
  secondary_private_ip_addresses = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
