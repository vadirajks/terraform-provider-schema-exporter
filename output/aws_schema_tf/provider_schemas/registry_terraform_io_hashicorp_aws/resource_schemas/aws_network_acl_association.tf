resource "aws_network_acl_association" "name" {
  network_acl_id = string (Required)
  subnet_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
