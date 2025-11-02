resource "azurerm_iothub_enrichment" "name" {
  endpoint_names = ['list', 'string'] (Required)
  iothub_name = string (Required)
  key = string (Required)
  resource_group_name = string (Required)
  value = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
