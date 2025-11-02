resource "azurerm_management_group" "name" {
  display_name = string (Optional, Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  parent_management_group_id = string (Optional, Computed)
  subscription_ids = ['set', 'string'] (Optional, Computed)
  tenant_scoped_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
