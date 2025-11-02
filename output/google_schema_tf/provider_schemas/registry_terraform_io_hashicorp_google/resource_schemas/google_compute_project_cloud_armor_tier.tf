resource "google_compute_project_cloud_armor_tier" "name" {
  cloud_armor_tier = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
