resource "azurerm_automation_module" "name" {
  automation_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  module_link block "list" (Required) {
    uri = string (Required)

    hash block "list" (Optional) {
      algorithm = string (Required)
      value = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
