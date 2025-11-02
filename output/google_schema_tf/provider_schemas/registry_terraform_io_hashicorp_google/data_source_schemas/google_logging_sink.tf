data "google_logging_sink" "name" {
  id = string (Required)
  bigquery_options = ['list', ['object', {'use_partitioned_tables': 'bool'}]] (Computed)
  description = string (Computed)
  destination = string (Computed)
  disabled = bool (Computed)
  exclusions = ['list', ['object', {'description': 'string', 'disabled': 'bool', 'filter': 'string', 'name': 'string'}]] (Computed)
  filter = string (Computed)
  name = string (Computed)
  writer_identity = string (Computed)
}
