data "azurerm_management_group" "name" {
  all_management_group_ids = ['list', 'string'] (Computed)
  all_subscription_ids = ['list', 'string'] (Computed)
  display_name = string (Optional, Computed)
  id = string (Optional, Computed)
  management_group_ids = ['list', 'string'] (Computed)
  name = string (Optional, Computed)
  parent_management_group_id = string (Computed)
  subscription_ids = ['list', 'string'] (Computed)
  tenant_scoped_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
