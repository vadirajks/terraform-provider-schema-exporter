resource "google_firebase_app_hosting_backend" "name" {
  app_id = string (Required)
  backend_id = string (Required)
  location = string (Required)
  service_account = string (Required)
  serving_locality = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  delete_time = string (Computed)
  display_name = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  environment = string (Optional)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  managed_resources = ['list', ['object', {'run_service': ['list', ['object', {'service': 'string'}]]}]] (Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)
  uri = string (Computed)

  codebase block "list" (Optional) {
    repository = string (Required)
    root_directory = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
