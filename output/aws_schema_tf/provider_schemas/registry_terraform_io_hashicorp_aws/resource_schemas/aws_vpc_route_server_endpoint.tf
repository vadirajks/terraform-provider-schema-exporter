resource "aws_vpc_route_server_endpoint" "name" {
  route_server_id = string (Required)
  subnet_id = string (Required)
  arn = string (Computed)
  eni_address = string (Computed)
  eni_id = string (Computed)
  region = string (Optional, Computed)
  route_server_endpoint_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  vpc_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
