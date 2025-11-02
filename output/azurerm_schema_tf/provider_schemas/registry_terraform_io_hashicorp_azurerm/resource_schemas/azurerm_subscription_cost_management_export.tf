resource "azurerm_subscription_cost_management_export" "name" {
  name = string (Required)
  recurrence_period_end_date = string (Required)
  recurrence_period_start_date = string (Required)
  recurrence_type = string (Required)
  subscription_id = string (Required)
  active = bool (Optional)
  file_format = string (Optional)
  id = string (Optional, Computed)

  export_data_options block "list" (Required) {
    time_frame = string (Required)
    type = string (Required)
  }

  export_data_storage_location block "list" (Required) {
    container_id = string (Required)
    root_folder_path = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
