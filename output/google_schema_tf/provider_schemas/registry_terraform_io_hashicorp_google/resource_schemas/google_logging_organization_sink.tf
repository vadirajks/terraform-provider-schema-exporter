resource "google_logging_organization_sink" "name" {
  destination = string (Required)
  name = string (Required)
  org_id = string (Required)
  description = string (Optional)
  disabled = bool (Optional)
  filter = string (Optional)
  id = string (Optional, Computed)
  include_children = bool (Optional)
  intercept_children = bool (Optional)
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
