resource "azurerm_stream_analytics_job_storage_account" "name" {
  authentication_mode = string (Required)
  storage_account_name = string (Required)
  stream_analytics_job_id = string (Required)
  id = string (Optional, Computed)
  storage_account_key = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
