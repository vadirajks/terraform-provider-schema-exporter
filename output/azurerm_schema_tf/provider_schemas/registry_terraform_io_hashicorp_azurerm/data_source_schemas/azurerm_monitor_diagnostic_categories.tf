data "azurerm_monitor_diagnostic_categories" "name" {
  resource_id = string (Required)
  id = string (Optional, Computed)
  log_category_groups = ['set', 'string'] (Computed)
  log_category_types = ['set', 'string'] (Computed)
  metrics = ['set', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
