resource "azurerm_app_service_active_slot" "name" {
  app_service_name = string (Required)
  app_service_slot_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
