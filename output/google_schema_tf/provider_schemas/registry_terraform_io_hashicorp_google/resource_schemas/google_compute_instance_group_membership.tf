resource "google_compute_instance_group_membership" "name" {
  instance = string (Required)
  instance_group = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  zone = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
