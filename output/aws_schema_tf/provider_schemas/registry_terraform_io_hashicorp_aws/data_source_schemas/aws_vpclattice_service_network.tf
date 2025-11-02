data "aws_vpclattice_service_network" "name" {
  service_network_identifier = string (Required)
  arn = string (Computed)
  auth_type = string (Computed)
  created_at = string (Computed)
  id = string (Optional, Computed)
  last_updated_at = string (Computed)
  name = string (Computed)
  number_of_associated_services = number (Computed)
  number_of_associated_vpcs = number (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
