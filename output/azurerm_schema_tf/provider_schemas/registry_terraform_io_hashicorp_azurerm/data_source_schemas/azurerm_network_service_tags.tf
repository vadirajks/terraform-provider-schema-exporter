data "azurerm_network_service_tags" "name" {
  location = string (Required)
  service = string (Required)
  address_prefixes = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  ipv4_cidrs = ['list', 'string'] (Computed)
  ipv6_cidrs = ['list', 'string'] (Computed)
  location_filter = string (Optional)
  name = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
