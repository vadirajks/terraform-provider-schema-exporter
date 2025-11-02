resource "aws_route_table_association" "name" {
  route_table_id = string (Required)
  gateway_id = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  subnet_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
