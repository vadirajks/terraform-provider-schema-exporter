resource "google_bigquery_row_access_policy" "name" {
  dataset_id = string (Required)
  filter_predicate = string (Required)
  policy_id = string (Required)
  table_id = string (Required)
  creation_time = string (Computed)
  grantees = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  last_modified_time = string (Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
