resource "azurerm_user_assigned_identity" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  client_id = string (Computed)
  id = string (Optional, Computed)
  principal_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  tenant_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
