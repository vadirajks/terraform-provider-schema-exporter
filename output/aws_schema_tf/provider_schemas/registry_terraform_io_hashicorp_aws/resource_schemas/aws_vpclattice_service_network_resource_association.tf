resource "aws_vpclattice_service_network_resource_association" "name" {
  resource_configuration_identifier = string (Required)
  service_network_identifier = string (Required)
  arn = string (Computed)
  dns_entry = ['list', ['object', {'domain_name': 'string', 'hosted_zone_id': 'string'}]] (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
