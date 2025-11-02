resource "aws_vpc_endpoint_connection_accepter" "name" {
  vpc_endpoint_id = string (Required)
  vpc_endpoint_service_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  vpc_endpoint_state = string (Computed)
}
