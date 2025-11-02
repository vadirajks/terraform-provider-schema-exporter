data "azurerm_stream_analytics_job" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  compatibility_level = string (Computed)
  data_locale = string (Computed)
  events_late_arrival_max_delay_in_seconds = number (Computed)
  events_out_of_order_max_delay_in_seconds = number (Computed)
  events_out_of_order_policy = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  job_id = string (Computed)
  last_output_time = string (Computed)
  location = string (Computed)
  output_error_policy = string (Computed)
  sku_name = string (Computed)
  start_mode = string (Computed)
  start_time = string (Computed)
  streaming_units = number (Computed)
  transformation_query = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
