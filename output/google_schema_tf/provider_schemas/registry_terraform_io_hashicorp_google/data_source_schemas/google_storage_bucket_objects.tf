data "google_storage_bucket_objects" "name" {
  bucket = string (Required)
  bucket_objects = ['list', ['object', {'content_type': 'string', 'media_link': 'string', 'name': 'string', 'self_link': 'string', 'storage_class': 'string'}]] (Computed)
  id = string (Optional, Computed)
  match_glob = string (Optional)
  prefix = string (Optional)
}
