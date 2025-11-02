resource "aws_vpc_endpoint_route_table_association" "name" {
  route_table_id = string (Required)
  vpc_endpoint_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
