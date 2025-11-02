data "aws_service_principal" "name" {
  service_name = string (Required)
  id = string (Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  suffix = string (Computed)
}
