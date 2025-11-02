resource "google_compute_instance_group_named_port" "name" {
  group = string (Required)
  name = string (Required)
  port = number (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  zone = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
