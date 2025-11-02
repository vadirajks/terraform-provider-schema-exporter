resource "aws_vpc_endpoint_service_allowed_principal" "name" {
  principal_arn = string (Required)
  vpc_endpoint_service_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
