resource "google_sql_database" "name" {
  instance = string (Required)
  name = string (Required)
  charset = string (Optional, Computed)
  collation = string (Optional, Computed)
  deletion_policy = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  self_link = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
