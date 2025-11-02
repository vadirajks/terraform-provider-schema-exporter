resource "google_firestore_user_creds" "name" {
  database = string (Required)
  name = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  resource_identity = ['list', ['object', {'principal': 'string'}]] (Computed)
  secure_password = string (Computed)
  state = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
