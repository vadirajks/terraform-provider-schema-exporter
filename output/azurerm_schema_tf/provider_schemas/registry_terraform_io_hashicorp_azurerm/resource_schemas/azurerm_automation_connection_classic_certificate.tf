resource "azurerm_automation_connection_classic_certificate" "name" {
  automation_account_name = string (Required)
  certificate_asset_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  subscription_id = string (Required)
  subscription_name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
