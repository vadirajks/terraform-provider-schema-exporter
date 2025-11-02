resource "aws_vpclattice_service_network" "name" {
  name = string (Required)
  arn = string (Computed)
  auth_type = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
