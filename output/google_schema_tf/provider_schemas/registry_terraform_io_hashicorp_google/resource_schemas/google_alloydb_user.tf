resource "google_alloydb_user" "name" {
  cluster = string (Required)
  user_id = string (Required)
  user_type = string (Required)
  database_roles = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  password = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
