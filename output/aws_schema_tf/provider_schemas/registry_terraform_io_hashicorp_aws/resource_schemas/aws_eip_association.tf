resource "aws_eip_association" "name" {
  allocation_id = string (Optional, Computed)
  allow_reassociation = bool (Optional)
  id = string (Optional, Computed)
  instance_id = string (Optional, Computed)
  network_interface_id = string (Optional, Computed)
  private_ip_address = string (Optional, Computed)
  public_ip = string (Optional, Computed)
  region = string (Optional, Computed)
}
