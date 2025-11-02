resource "google_biglake_catalog" "name" {
  location = string (Required)
  name = string (Required)
  create_time = string (Computed)
  delete_time = string (Computed)
  expire_time = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
