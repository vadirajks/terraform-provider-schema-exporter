resource "google_firebase_data_connect_service" "name" {
  location = string (Required)
  service_id = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  deletion_policy = string (Optional)
  display_name = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
