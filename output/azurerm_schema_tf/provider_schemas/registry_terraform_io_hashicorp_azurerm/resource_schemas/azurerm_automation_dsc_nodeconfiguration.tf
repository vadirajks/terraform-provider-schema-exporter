resource "azurerm_automation_dsc_nodeconfiguration" "name" {
  automation_account_name = string (Required)
  content_embedded = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  configuration_name = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
