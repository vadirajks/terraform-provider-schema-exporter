resource "azurerm_automation_connection_type" "name" {
  automation_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  is_global = bool (Optional)

  field block "list" (Required) {
    name = string (Required)
    type = string (Required)
    is_encrypted = bool (Optional)
    is_optional = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
