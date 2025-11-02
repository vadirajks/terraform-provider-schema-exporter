resource "google_firebase_app_hosting_traffic" "name" {
  backend = string (Required)
  location = string (Required)
  create_time = string (Computed)
  current = ['list', ['object', {'splits': ['list', ['object', {'build': 'string', 'percent': 'number'}]]}]] (Computed)
  delete_time = string (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  uid = string (Computed)
  update_time = string (Computed)

  rollout_policy block "list" (Optional) {
    codebase_branch = string (Optional)
    disabled = bool (Optional)
    disabled_time = string (Computed)
  }

  target block "list" (Optional) {

    splits block "list" (Required) {
      build = string (Required)
      percent = number (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
