resource "azurerm_express_route_circuit" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  allow_classic_operations = bool (Optional)
  authorization_key = string (Optional)
  bandwidth_in_gbps = number (Optional)
  bandwidth_in_mbps = number (Optional)
  express_route_port_id = string (Optional)
  id = string (Optional, Computed)
  peering_location = string (Optional)
  rate_limiting_enabled = bool (Optional)
  service_key = string (Computed)
  service_provider_name = string (Optional)
  service_provider_provisioning_state = string (Computed)
  tags = ['map', 'string'] (Optional)

  sku block "list" (Required) {
    family = string (Required)
    tier = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
