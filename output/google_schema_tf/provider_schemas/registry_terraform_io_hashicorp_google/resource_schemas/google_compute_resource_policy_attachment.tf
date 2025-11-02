resource "google_compute_resource_policy_attachment" "name" {
  instance = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  zone = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
