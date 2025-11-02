data "azurerm_eventhub" "name" {
  name = string (Required)
  namespace_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  partition_count = number (Computed)
  partition_ids = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
