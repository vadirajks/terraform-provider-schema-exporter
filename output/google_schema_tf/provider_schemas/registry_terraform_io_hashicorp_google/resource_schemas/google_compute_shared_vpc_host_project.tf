resource "google_compute_shared_vpc_host_project" "name" {
  project = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
