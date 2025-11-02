data "google_beyondcorp_app_connector" "name" {
  name = string (Required)
  display_name = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Computed)
  principal_info = ['list', ['object', {'service_account': ['list', ['object', {'email': 'string'}]]}]] (Computed)
  project = string (Optional)
  region = string (Optional)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
}
