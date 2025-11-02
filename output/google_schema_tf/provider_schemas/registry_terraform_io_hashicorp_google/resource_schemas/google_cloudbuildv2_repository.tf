resource "google_cloudbuildv2_repository" "name" {
  name = string (Required)
  parent_connection = string (Required)
  remote_uri = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  effective_annotations = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
