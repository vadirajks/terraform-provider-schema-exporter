data "google_storage_buckets" "name" {
  buckets = ['list', ['object', {'labels': ['map', 'string'], 'location': 'string', 'name': 'string', 'self_link': 'string', 'storage_class': 'string'}]] (Computed)
  id = string (Optional, Computed)
  prefix = string (Optional)
  project = string (Optional)
}
