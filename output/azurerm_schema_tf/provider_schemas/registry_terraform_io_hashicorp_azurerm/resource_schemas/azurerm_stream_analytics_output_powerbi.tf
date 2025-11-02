resource "azurerm_stream_analytics_output_powerbi" "name" {
  dataset = string (Required)
  group_id = string (Required)
  group_name = string (Required)
  name = string (Required)
  stream_analytics_job_id = string (Required)
  table = string (Required)
  id = string (Optional, Computed)
  token_user_display_name = string (Optional)
  token_user_principal_name = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
