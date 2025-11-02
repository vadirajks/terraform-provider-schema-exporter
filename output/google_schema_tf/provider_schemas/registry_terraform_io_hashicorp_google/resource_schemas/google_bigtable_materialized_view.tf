resource "google_bigtable_materialized_view" "name" {
  materialized_view_id = string (Required)
  query = string (Required)
  deletion_protection = bool (Optional)
  id = string (Optional, Computed)
  instance = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
