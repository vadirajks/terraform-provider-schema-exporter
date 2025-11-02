resource "aws_vpclattice_resource_configuration" "name" {
  name = string (Required)
  allow_association_to_shareable_service_network = bool (Optional, Computed)
  arn = string (Computed)
  id = string (Computed)
  port_ranges = ['set', 'string'] (Optional, Computed)
  protocol = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_configuration_group_id = string (Optional)
  resource_gateway_identifier = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  type = string (Optional, Computed)

  resource_configuration_definition block "list" (Optional) {

    arn_resource block "list" (Optional) {
      arn = string (Required)
    }

    dns_resource block "list" (Optional) {
      domain_name = string (Required)
      ip_address_type = string (Required)
    }

    ip_resource block "list" (Optional) {
      ip_address = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
