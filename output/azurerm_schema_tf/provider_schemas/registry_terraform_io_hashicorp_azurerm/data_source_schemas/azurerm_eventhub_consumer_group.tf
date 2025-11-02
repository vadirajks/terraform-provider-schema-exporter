data "azurerm_eventhub_consumer_group" "name" {
  eventhub_name = string (Required)
  name = string (Required)
  namespace_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  user_metadata = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
