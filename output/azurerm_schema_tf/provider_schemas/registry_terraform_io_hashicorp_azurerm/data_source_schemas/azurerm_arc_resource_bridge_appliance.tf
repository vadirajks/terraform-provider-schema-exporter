data "azurerm_arc_resource_bridge_appliance" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  distro = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  infrastructure_provider = string (Computed)
  location = string (Computed)
  public_key_base64 = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
