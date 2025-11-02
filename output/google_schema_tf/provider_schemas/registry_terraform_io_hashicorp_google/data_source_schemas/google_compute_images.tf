data "google_compute_images" "name" {
  filter = string (Optional)
  id = string (Optional, Computed)
  images = ['list', ['object', {'archive_size_bytes': 'number', 'creation_timestamp': 'string', 'description': 'string', 'disk_size_gb': 'number', 'family': 'string', 'image_id': 'number', 'labels': ['map', 'string'], 'name': 'string', 'self_link': 'string', 'source_disk': 'string', 'source_disk_id': 'string', 'source_image_id': 'string'}]] (Computed)
  project = string (Optional)
}
