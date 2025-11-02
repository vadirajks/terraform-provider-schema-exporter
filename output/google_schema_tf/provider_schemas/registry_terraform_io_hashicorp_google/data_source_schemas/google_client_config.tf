data "google_client_config" "name" {
  access_token = string (Computed)
  default_labels = ['map', 'string'] (Computed)
  id = string (Computed)
  project = string (Computed)
  region = string (Computed)
  zone = string (Computed)
}
