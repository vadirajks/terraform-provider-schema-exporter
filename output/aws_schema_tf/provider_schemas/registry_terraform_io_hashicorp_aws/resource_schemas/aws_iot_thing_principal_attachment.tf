resource "aws_iot_thing_principal_attachment" "name" {
  principal = string (Required)
  thing = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  thing_principal_type = string (Optional, Computed)
}
