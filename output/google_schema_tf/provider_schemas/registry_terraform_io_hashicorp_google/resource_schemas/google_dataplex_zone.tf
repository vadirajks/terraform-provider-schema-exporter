resource "google_dataplex_zone" "name" {
  lake = string (Required)
  location = string (Required)
  name = string (Required)
  type = string (Required)
  asset_status = ['list', ['object', {'active_assets': 'number', 'security_policy_applying_assets': 'number', 'update_time': 'string'}]] (Computed)
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  discovery_spec block "list" (Required) {
    enabled = bool (Required)
    exclude_patterns = ['list', 'string'] (Optional)
    include_patterns = ['list', 'string'] (Optional)
    schedule = string (Optional, Computed)

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
    location_type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
