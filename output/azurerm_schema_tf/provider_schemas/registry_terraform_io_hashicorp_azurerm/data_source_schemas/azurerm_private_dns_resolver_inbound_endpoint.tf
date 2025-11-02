data "azurerm_private_dns_resolver_inbound_endpoint" "name" {
  name = string (Required)
  private_dns_resolver_id = string (Required)
  id = string (Optional, Computed)
  ip_configurations = ['list', ['object', {'private_ip_address': 'string', 'private_ip_allocation_method': 'string', 'subnet_id': 'string'}]] (Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
