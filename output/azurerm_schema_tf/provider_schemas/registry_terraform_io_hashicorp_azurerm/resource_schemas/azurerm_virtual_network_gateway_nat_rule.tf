resource "azurerm_virtual_network_gateway_nat_rule" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  virtual_network_gateway_id = string (Required)
  id = string (Optional, Computed)
  ip_configuration_id = string (Optional)
  mode = string (Optional)
  type = string (Optional)

  external_mapping block "list" (Required) {
    address_space = string (Required)
    port_range = string (Optional)
  }

  internal_mapping block "list" (Required) {
    address_space = string (Required)
    port_range = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
