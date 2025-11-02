data "aws_iot_registration_code" "name" {
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  registration_code = string (Computed)
}
