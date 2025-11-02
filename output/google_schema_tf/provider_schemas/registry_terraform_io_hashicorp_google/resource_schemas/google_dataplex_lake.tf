resource "google_dataplex_lake" "name" {
  location = string (Required)
  name = string (Required)
  asset_status = ['list', ['object', {'active_assets': 'number', 'security_policy_applying_assets': 'number', 'update_time': 'string'}]] (Computed)
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  metastore_status = ['list', ['object', {'endpoint': 'string', 'message': 'string', 'state': 'string', 'update_time': 'string'}]] (Computed)
  project = string (Optional, Computed)
  service_account = string (Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  metastore block "list" (Optional) {
    service = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
