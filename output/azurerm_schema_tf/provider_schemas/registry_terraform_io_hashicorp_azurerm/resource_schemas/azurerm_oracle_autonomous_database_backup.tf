resource "azurerm_oracle_autonomous_database_backup" "name" {
  autonomous_database_id = string (Required)
  name = string (Required)
  retention_period_in_days = number (Required)
  id = string (Optional, Computed)
  type = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
