data "aws_eip" "name" {
  arn = string (Computed)
  association_id = string (Computed)
  carrier_ip = string (Computed)
  customer_owned_ip = string (Computed)
  customer_owned_ipv4_pool = string (Computed)
  domain = string (Computed)
  id = string (Optional, Computed)
  instance_id = string (Computed)
  ipam_pool_id = string (Computed)
  network_interface_id = string (Computed)
  network_interface_owner_id = string (Computed)
  private_dns = string (Computed)
  private_ip = string (Computed)
  ptr_record = string (Computed)
  public_dns = string (Computed)
  public_ip = string (Optional, Computed)
  public_ipv4_pool = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
