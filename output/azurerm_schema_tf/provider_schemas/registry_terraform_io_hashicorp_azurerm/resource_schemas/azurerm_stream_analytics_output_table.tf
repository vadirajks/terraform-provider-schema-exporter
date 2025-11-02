resource "azurerm_stream_analytics_output_table" "name" {
  batch_size = number (Required)
  name = string (Required)
  partition_key = string (Required)
  resource_group_name = string (Required)
  row_key = string (Required)
  storage_account_key = string (Required)
  storage_account_name = string (Required)
  stream_analytics_job_name = string (Required)
  table = string (Required)
  columns_to_remove = ['list', 'string'] (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
