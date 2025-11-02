resource "aws_vpc_route_server_propagation" "name" {
  route_server_id = string (Required)
  route_table_id = string (Required)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
