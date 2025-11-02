resource "azurerm_eventhub_namespace_disaster_recovery_config" "name" {
  name = string (Required)
  namespace_name = string (Required)
  partner_namespace_id = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
