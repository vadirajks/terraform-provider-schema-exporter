data "google_composer_image_versions" "name" {
  id = string (Optional, Computed)
  image_versions = ['list', ['object', {'image_version_id': 'string', 'supported_python_versions': ['list', 'string']}]] (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
}
