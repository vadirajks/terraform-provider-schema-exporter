resource "google_compute_instance_group" "name" {
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  instances = ['set', 'string'] (Optional, Computed)
  network = string (Optional, Computed)
  project = string (Optional, Computed)
  self_link = string (Computed)
  size = number (Computed)
  zone = string (Optional, Computed)

  named_port block "list" (Optional) {
    name = string (Required)
    port = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
