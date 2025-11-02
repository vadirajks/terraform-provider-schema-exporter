resource "azurerm_logic_app_integration_account_partner" "name" {
  integration_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  metadata = string (Optional)

  business_identity block "set" (Required) {
    qualifier = string (Required)
    value = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
