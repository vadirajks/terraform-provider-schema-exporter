resource "aws_main_route_table_association" "name" {
  route_table_id = string (Required)
  vpc_id = string (Required)
  id = string (Optional, Computed)
  original_route_table_id = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
