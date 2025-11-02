data "google_artifact_registry_docker_images" "name" {
  location = string (Required)
  repository_id = string (Required)
  docker_images = ['list', ['object', {'build_time': 'string', 'image_name': 'string', 'image_size_bytes': 'string', 'media_type': 'string', 'name': 'string', 'self_link': 'string', 'tags': ['list', 'string'], 'update_time': 'string', 'upload_time': 'string'}]] (Computed)
  id = string (Optional, Computed)
  project = string (Optional)
}
