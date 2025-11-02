resource "azurerm_stream_analytics_job" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  transformation_query = string (Required)
  compatibility_level = string (Optional, Computed)
  content_storage_policy = string (Optional)
  data_locale = string (Optional)
  events_late_arrival_max_delay_in_seconds = number (Optional)
  events_out_of_order_max_delay_in_seconds = number (Optional)
  events_out_of_order_policy = string (Optional)
  id = string (Optional, Computed)
  job_id = string (Computed)
  output_error_policy = string (Optional)
  sku_name = string (Optional)
  stream_analytics_cluster_id = string (Optional)
  streaming_units = number (Optional)
  tags = ['map', 'string'] (Optional)
  type = string (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  job_storage_account block "list" (Optional) {
    account_name = string (Required)
    account_key = string (Optional)
    authentication_mode = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
