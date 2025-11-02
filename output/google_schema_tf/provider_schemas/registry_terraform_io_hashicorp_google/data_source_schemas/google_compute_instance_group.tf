data "google_compute_instance_group" "name" {
  description = string (Computed)
  id = string (Optional, Computed)
  instances = ['set', 'string'] (Computed)
  name = string (Optional)
  named_port = ['list', ['object', {'name': 'string', 'port': 'number'}]] (Computed)
  network = string (Computed)
  project = string (Optional, Computed)
  self_link = string (Optional, Computed)
  size = number (Computed)
  zone = string (Optional, Computed)
}
