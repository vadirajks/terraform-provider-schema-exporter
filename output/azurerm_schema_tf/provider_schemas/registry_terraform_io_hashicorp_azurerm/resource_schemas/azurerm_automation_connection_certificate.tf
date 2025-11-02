resource "azurerm_automation_connection_certificate" "name" {
  automation_account_name = string (Required)
  automation_certificate_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  subscription_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
