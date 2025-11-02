resource "azurerm_monitor_data_collection_rule_association" "name" {
  target_resource_id = string (Required)
  data_collection_endpoint_id = string (Optional)
  data_collection_rule_id = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
