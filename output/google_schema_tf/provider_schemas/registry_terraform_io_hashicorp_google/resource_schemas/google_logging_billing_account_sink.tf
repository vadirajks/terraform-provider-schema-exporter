resource "google_logging_billing_account_sink" "name" {
  billing_account = string (Required)
  destination = string (Required)
  name = string (Required)
  description = string (Optional)
  disabled = bool (Optional)
  filter = string (Optional)
  id = string (Optional, Computed)
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
