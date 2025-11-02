data "azurerm_user_assigned_identity" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  client_id = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  principal_id = string (Computed)
  tags = ['map', 'string'] (Computed)
  tenant_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
