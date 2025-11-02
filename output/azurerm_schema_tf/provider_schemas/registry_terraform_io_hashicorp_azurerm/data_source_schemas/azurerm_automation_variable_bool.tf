data "azurerm_automation_variable_bool" "name" {
  automation_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Computed)
  encrypted = bool (Computed)
  id = string (Optional, Computed)
  value = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
