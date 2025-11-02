data "aws_servicequotas_service" "name" {
  service_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  service_code = string (Computed)
}
