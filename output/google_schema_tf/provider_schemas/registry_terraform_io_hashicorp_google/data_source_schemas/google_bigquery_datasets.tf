data "google_bigquery_datasets" "name" {
  datasets = ['list', ['object', {'dataset_id': 'string', 'friendly_name': 'string', 'labels': ['map', 'string'], 'location': 'string'}]] (Computed)
  id = string (Optional, Computed)
  project = string (Optional)
}
