data "google_sql_database" "name" {
  instance = string (Required)
  name = string (Required)
  charset = string (Computed)
  collation = string (Computed)
  deletion_policy = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional)
  self_link = string (Computed)
}
