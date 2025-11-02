resource "azurerm_monitor_private_link_scoped_service" "name" {
  linked_resource_id = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  scope_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
