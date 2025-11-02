resource "azurerm_iotcentral_organization" "name" {
  display_name = string (Required)
  iotcentral_application_id = string (Required)
  organization_id = string (Required)
  id = string (Optional, Computed)
  parent_organization_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
