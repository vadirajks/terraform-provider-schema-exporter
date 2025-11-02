resource "azurerm_app_configuration_feature" "name" {
  configuration_store_id = string (Required)
  name = string (Required)
  description = string (Optional)
  enabled = bool (Optional)
  etag = string (Optional, Computed)
  id = string (Optional, Computed)
  key = string (Optional, Computed)
  label = string (Optional)
  locked = bool (Optional)
  percentage_filter_value = number (Optional)
  tags = ['map', 'string'] (Optional)

  targeting_filter block "list" (Optional) {
    default_rollout_percentage = number (Required)
    users = ['list', 'string'] (Optional)

    groups block "list" (Optional) {
      name = string (Required)
      rollout_percentage = number (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  timewindow_filter block "list" (Optional) {
    end = string (Optional)
    start = string (Optional)
  }
}
