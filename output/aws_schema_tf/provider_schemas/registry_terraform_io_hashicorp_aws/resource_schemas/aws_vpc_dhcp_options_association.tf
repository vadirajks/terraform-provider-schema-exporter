resource "aws_vpc_dhcp_options_association" "name" {
  dhcp_options_id = string (Required)
  vpc_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
