resource "aws_vpn_gateway" "name" {
  amazon_side_asn = string (Optional, Computed)
  arn = string (Computed)
  availability_zone = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Optional, Computed)
}
