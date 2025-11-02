resource "azurerm_automation_connection" "name" {
  automation_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  type = string (Required)
  values = ['map', 'string'] (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
