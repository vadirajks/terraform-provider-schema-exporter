resource "google_compute_shared_vpc_service_project" "name" {
  host_project = string (Required)
  service_project = string (Required)
  deletion_policy = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
