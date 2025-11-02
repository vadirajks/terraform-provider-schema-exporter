resource "google_firebase_app_hosting_build" "name" {
  backend = string (Required)
  build_id = string (Required)
  location = string (Required)
  annotations = ['map', 'string'] (Optional)
  build_logs_uri = string (Computed)
  create_time = string (Computed)
  display_name = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  environment = string (Computed)
  error = ['list', ['object', {'code': 'number', 'details': ['list', ['map', 'string']], 'message': 'string'}]] (Computed)
  error_source = string (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  image = string (Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  source block "list" (Required) {

    codebase block "list" (Optional) {
      author = ['list', ['object', {'display_name': 'string', 'email': 'string', 'image_uri': 'string'}]] (Computed)
      branch = string (Optional)
      commit = string (Optional)
      commit_message = string (Computed)
      commit_time = string (Computed)
      display_name = string (Computed)
      hash = string (Computed)
      uri = string (Computed)
    }

    container block "list" (Optional) {
      image = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
