resource "azurerm_monitor_private_link_scope" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  ingestion_access_mode = string (Optional)
  query_access_mode = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
