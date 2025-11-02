resource "aws_vpc_endpoint_private_dns" "name" {
  private_dns_enabled = bool (Required)
  vpc_endpoint_id = string (Required)
  region = string (Optional, Computed)
}
