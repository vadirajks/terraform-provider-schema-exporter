resource "azurerm_arc_resource_bridge_appliance" "name" {
  distro = string (Required)
  infrastructure_provider = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  public_key_base64 = string (Optional)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Required) {
    type = string (Required)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
