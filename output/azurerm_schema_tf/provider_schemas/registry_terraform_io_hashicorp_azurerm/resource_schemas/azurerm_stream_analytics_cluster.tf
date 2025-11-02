resource "azurerm_stream_analytics_cluster" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  streaming_capacity = number (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
