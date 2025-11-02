resource "aws_dx_connection_association" "name" {
  connection_id = string (Required)
  lag_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
