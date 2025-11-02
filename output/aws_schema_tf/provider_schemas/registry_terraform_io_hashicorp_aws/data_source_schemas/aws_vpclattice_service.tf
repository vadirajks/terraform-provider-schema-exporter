data "aws_vpclattice_service" "name" {
  arn = string (Computed)
  auth_type = string (Computed)
  certificate_arn = string (Computed)
  custom_domain_name = string (Computed)
  dns_entry = ['list', ['object', {'domain_name': 'string', 'hosted_zone_id': 'string'}]] (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
  service_identifier = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
