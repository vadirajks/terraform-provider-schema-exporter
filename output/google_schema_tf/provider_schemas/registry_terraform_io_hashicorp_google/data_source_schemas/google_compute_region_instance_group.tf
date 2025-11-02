data "google_compute_region_instance_group" "name" {
  id = string (Optional, Computed)
  instances = ['list', ['object', {'instance': 'string', 'named_ports': ['list', ['object', {'name': 'string', 'port': 'number'}]], 'status': 'string'}]] (Computed)
  name = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Optional, Computed)
  size = number (Computed)
}
