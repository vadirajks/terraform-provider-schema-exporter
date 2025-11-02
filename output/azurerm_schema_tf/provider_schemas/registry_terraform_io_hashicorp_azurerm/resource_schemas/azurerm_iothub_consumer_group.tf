resource "azurerm_iothub_consumer_group" "name" {
  eventhub_endpoint_name = string (Required)
  iothub_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
