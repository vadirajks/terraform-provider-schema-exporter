data "google_alloydb_locations" "name" {
  id = string (Optional, Computed)
  locations = ['list', ['object', {'display_name': 'string', 'labels': ['map', 'string'], 'location_id': 'string', 'metadata': ['map', 'string'], 'name': 'string'}]] (Computed)
  project = string (Optional)
}
