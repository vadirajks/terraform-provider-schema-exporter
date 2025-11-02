resource "aws_vpc_endpoint_security_group_association" "name" {
  security_group_id = string (Required)
  vpc_endpoint_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  replace_default_association = bool (Optional)
}
