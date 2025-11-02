resource "google_storage_bucket_access_control" "name" {
  bucket = string (Required)
  entity = string (Required)
  domain = string (Computed)
  email = string (Computed)
  id = string (Optional, Computed)
  role = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
