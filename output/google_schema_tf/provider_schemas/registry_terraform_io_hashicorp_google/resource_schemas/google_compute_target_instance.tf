resource "google_compute_target_instance" "name" {
  instance = string (Required)
  name = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  nat_policy = string (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)
  zone = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
