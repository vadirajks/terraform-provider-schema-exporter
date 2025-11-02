resource "azurerm_eventhub_consumer_group" "name" {
  eventhub_name = string (Required)
  name = string (Required)
  namespace_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  user_metadata = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
