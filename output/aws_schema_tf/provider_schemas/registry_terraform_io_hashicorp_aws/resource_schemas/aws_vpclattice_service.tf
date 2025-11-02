resource "aws_vpclattice_service" "name" {
  name = string (Required)
  arn = string (Computed)
  auth_type = string (Optional, Computed)
  certificate_arn = string (Optional)
  custom_domain_name = string (Optional)
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
