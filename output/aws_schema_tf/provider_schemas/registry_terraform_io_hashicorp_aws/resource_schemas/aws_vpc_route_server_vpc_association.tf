resource "aws_vpc_route_server_vpc_association" "name" {
  route_server_id = string (Required)
  vpc_id = string (Required)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
