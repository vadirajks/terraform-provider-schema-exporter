data "google_bigquery_tables" "name" {
  dataset_id = string (Required)
  id = string (Optional, Computed)
  project = string (Optional)
  tables = ['list', ['object', {'labels': ['map', 'string'], 'table_id': 'string'}]] (Computed)
}
