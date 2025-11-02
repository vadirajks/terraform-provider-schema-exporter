resource "aws_dx_connection_confirmation" "name" {
  connection_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
