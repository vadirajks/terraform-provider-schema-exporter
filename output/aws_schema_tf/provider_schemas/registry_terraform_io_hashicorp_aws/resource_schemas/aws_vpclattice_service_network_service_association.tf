resource "aws_vpclattice_service_network_service_association" "name" {
  service_identifier = string (Required)
  service_network_identifier = string (Required)
  arn = string (Computed)
  created_by = string (Computed)
  custom_domain_name = string (Computed)
  dns_entry = ['list', ['object', {'domain_name': 'string', 'hosted_zone_id': 'string'}]] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
