resource "azurerm_network_function_collector_policy" "name" {
  location = string (Required)
  name = string (Required)
  traffic_collector_id = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  ipfx_emission block "list" (Required) {
    destination_types = ['list', 'string'] (Required)
  }

  ipfx_ingestion block "list" (Required) {
    source_resource_ids = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
