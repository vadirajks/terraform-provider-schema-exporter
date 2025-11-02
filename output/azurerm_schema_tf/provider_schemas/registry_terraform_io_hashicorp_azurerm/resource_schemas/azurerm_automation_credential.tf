resource "azurerm_automation_credential" "name" {
  automation_account_name = string (Required)
  name = string (Required)
  password = string (Required)
  resource_group_name = string (Required)
  username = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
