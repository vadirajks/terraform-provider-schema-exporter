data "google_tpu_tensorflow_versions" "name" {
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  versions = ['list', 'string'] (Computed)
  zone = string (Optional, Computed)
}
