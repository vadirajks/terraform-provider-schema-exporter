resource "google_storage_folder" "name" {
  bucket = string (Required)
  name = string (Required)
  create_time = string (Computed)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  metageneration = string (Computed)
  self_link = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
