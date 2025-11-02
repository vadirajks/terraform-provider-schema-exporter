data "google_container_registry_image" "name" {
  name = string (Required)
  digest = string (Optional)
  id = string (Optional, Computed)
  image_url = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional)
  tag = string (Optional)
}
