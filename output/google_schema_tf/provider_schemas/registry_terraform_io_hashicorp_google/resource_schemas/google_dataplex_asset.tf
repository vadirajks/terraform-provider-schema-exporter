resource "google_dataplex_asset" "name" {
  dataplex_zone = string (Required)
  lake = string (Required)
  location = string (Required)
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  discovery_status = ['list', ['object', {'last_run_duration': 'string', 'last_run_time': 'string', 'message': 'string', 'state': 'string', 'stats': ['list', ['object', {'data_items': 'number', 'data_size': 'number', 'filesets': 'number', 'tables': 'number'}]], 'update_time': 'string'}]] (Computed)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  resource_status = ['list', ['object', {'message': 'string', 'state': 'string', 'update_time': 'string'}]] (Computed)
  security_status = ['list', ['object', {'message': 'string', 'state': 'string', 'update_time': 'string'}]] (Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  discovery_spec block "list" (Required) {
    enabled = bool (Required)
    exclude_patterns = ['list', 'string'] (Optional)
    include_patterns = ['list', 'string'] (Optional)
    schedule = string (Optional)

    csv_options block "list" (Optional) {
      delimiter = string (Optional)
      disable_type_inference = bool (Optional)
      encoding = string (Optional)
      header_rows = number (Optional)
    }

    json_options block "list" (Optional) {
      disable_type_inference = bool (Optional)
      encoding = string (Optional)
    }
  }

  resource_spec block "list" (Required) {
    type = string (Required)
    name = string (Optional)
    read_access_mode = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
