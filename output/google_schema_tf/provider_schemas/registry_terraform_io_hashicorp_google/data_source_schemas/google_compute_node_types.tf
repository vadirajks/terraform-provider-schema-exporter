data "google_compute_node_types" "name" {
  id = string (Optional, Computed)
  names = ['list', 'string'] (Computed)
  project = string (Optional, Computed)
  zone = string (Optional, Computed)
}
