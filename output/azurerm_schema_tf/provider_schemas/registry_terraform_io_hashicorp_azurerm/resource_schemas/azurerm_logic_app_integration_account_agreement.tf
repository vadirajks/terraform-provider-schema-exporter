resource "azurerm_logic_app_integration_account_agreement" "name" {
  agreement_type = string (Required)
  content = string (Required)
  guest_partner_name = string (Required)
  host_partner_name = string (Required)
  integration_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional)

  guest_identity block "list" (Required) {
    qualifier = string (Required)
    value = string (Required)
  }

  host_identity block "list" (Required) {
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
