resource "azurerm_automation_variable_string" "name" {
  automation_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  encrypted = bool (Optional)
  id = string (Optional, Computed)
  value = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
