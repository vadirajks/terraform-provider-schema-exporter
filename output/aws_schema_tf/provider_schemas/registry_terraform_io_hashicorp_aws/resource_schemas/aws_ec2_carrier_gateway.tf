resource "aws_ec2_carrier_gateway" "name" {
  vpc_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
