resource "google_discovery_engine_data_connector" "name" {
  collection_display_name = string (Required)
  collection_id = string (Required)
  data_source = string (Required)
  location = string (Required)
  refresh_interval = string (Required)
  action_state = string (Computed)
  auto_run_disabled = bool (Optional)
  blocking_reasons = ['list', 'string'] (Computed)
  connector_modes = ['list', 'string'] (Optional)
  connector_type = string (Computed)
  create_time = string (Computed)
  errors = ['list', ['object', {'code': 'number', 'message': 'string'}]] (Computed)
  id = string (Optional, Computed)
  incremental_refresh_interval = string (Optional)
  incremental_sync_disabled = bool (Optional)
  json_params = string (Optional)
  kms_key_name = string (Optional)
  last_sync_time = string (Computed)
  latest_pause_time = string (Computed)
  name = string (Computed)
  params = ['map', 'string'] (Optional)
  private_connectivity_project_id = string (Computed)
  project = string (Optional, Computed)
  realtime_state = string (Computed)
  state = string (Computed)
  static_ip_addresses = ['list', 'string'] (Computed)
  static_ip_enabled = bool (Optional)
  sync_mode = string (Optional)
  update_time = string (Computed)

  entities block "list" (Optional) {
    data_store = string (Computed)
    entity_name = string (Optional)
    key_property_mappings = ['map', 'string'] (Optional)
    params = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
