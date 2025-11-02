data "google_bigquery_default_service_account" "name" {
  email = string (Computed)
  id = string (Optional, Computed)
  member = string (Computed)
  project = string (Optional, Computed)
}
