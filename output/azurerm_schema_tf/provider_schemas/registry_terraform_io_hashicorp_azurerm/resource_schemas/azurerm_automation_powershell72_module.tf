resource "azurerm_automation_powershell72_module" "name" {
  automation_account_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

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
