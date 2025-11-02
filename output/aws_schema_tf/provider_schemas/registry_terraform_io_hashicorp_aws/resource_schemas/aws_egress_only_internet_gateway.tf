resource "aws_egress_only_internet_gateway" "name" {
  vpc_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
