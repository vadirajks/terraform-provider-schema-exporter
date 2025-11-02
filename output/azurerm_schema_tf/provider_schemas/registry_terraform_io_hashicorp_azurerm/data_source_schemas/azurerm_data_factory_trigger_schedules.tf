data "azurerm_data_factory_trigger_schedules" "name" {
  data_factory_id = string (Required)
  id = string (Optional, Computed)
  items = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
