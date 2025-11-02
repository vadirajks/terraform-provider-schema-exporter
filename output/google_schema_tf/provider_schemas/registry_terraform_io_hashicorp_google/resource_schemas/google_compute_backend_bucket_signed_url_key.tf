resource "google_compute_backend_bucket_signed_url_key" "name" {
  backend_bucket = string (Required)
  key_value = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
