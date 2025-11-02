resource "azurerm_iothub_fallback_route" "name" {
  enabled = bool (Required)
  endpoint_names = ['list', 'string'] (Required)
  iothub_name = string (Required)
  resource_group_name = string (Required)
  condition = string (Optional)
  id = string (Optional, Computed)
  source = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
