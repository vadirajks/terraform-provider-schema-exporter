resource "azurerm_logic_app_integration_account_batch_configuration" "name" {
  batch_group_name = string (Required)
  integration_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional)

  release_criteria block "list" (Required) {
    batch_size = number (Optional)
    message_count = number (Optional)

    recurrence block "list" (Optional) {
      frequency = string (Required)
      interval = number (Required)
      end_time = string (Optional)
      start_time = string (Optional)
      time_zone = string (Optional)

      schedule block "list" (Optional) {
        hours = ['set', 'number'] (Optional)
        minutes = ['set', 'number'] (Optional)
        month_days = ['set', 'number'] (Optional)
        week_days = ['set', 'string'] (Optional)

        monthly block "set" (Optional) {
          week = number (Required)
          weekday = string (Required)
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
