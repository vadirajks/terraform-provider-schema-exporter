data "aws_vpc_endpoint_service" "name" {
  acceptance_required = bool (Computed)
  arn = string (Computed)
  availability_zones = ['set', 'string'] (Computed)
  base_endpoint_dns_names = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  manages_vpc_endpoints = bool (Computed)
  owner = string (Computed)
  private_dns_name = string (Computed)
  private_dns_names = ['set', 'string'] (Computed)
  region = string (Computed)
  service = string (Optional)
  service_id = string (Computed)
  service_name = string (Optional, Computed)
  service_region = string (Computed)
  service_regions = ['set', 'string'] (Optional)
  service_type = string (Optional, Computed)
  supported_ip_address_types = ['set', 'string'] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  vpc_endpoint_policy_supported = bool (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
