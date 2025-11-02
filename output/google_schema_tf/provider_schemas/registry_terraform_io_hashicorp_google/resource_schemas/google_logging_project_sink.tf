resource "google_logging_project_sink" "name" {
  destination = string (Required)
  name = string (Required)
  custom_writer_identity = string (Optional)
  description = string (Optional)
  disabled = bool (Optional)
  filter = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  unique_writer_identity = bool (Optional)
  writer_identity = string (Computed)

  bigquery_options block "list" (Optional) {
    use_partitioned_tables = bool (Required)
  }

  exclusions block "list" (Optional) {
    filter = string (Required)
    name = string (Required)
    description = string (Optional)
    disabled = bool (Optional)
  }
}
