resource "google_storage_anywhere_cache" "name" {
  bucket = string (Required)
  zone = string (Required)
  admission_policy = string (Optional)
  anywhere_cache_id = string (Computed)
  create_time = string (Computed)
  id = string (Optional, Computed)
  pending_update = bool (Computed)
  state = string (Computed)
  ttl = string (Optional)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
