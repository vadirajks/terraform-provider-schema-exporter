resource "google_container_registry" "name" {
  bucket_self_link = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional)
  project = string (Optional, Computed)
}
