resource "azurerm_resource_management_private_link_association" "name" {
  management_group_id = string (Required)
  public_network_access_enabled = bool (Required)
  resource_management_private_link_id = string (Required)
  id = string (Optional, Computed)
  name = string (Optional)
  tenant_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
