resource "azurerm_iothub_route" "name" {
  enabled = bool (Required)
  endpoint_names = ['list', 'string'] (Required)
  iothub_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  source = string (Required)
  condition = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
