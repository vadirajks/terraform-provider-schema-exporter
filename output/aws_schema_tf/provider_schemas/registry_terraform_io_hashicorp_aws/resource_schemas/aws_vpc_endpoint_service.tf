resource "aws_vpc_endpoint_service" "name" {
  acceptance_required = bool (Required)
  allowed_principals = ['set', 'string'] (Optional, Computed)
  arn = string (Computed)
  availability_zones = ['set', 'string'] (Computed)
  base_endpoint_dns_names = ['set', 'string'] (Computed)
  gateway_load_balancer_arns = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  manages_vpc_endpoints = bool (Computed)
  network_load_balancer_arns = ['set', 'string'] (Optional)
  private_dns_name = string (Optional, Computed)
  private_dns_name_configuration = ['list', ['object', {'name': 'string', 'state': 'string', 'type': 'string', 'value': 'string'}]] (Computed)
  region = string (Optional, Computed)
  service_name = string (Computed)
  service_type = string (Computed)
  state = string (Computed)
  supported_ip_address_types = ['set', 'string'] (Optional, Computed)
  supported_regions = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
