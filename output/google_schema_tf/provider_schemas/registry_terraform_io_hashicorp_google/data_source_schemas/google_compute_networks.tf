data "google_compute_networks" "name" {
  id = string (Optional, Computed)
  networks = ['list', 'string'] (Computed)
  project = string (Optional)
  self_link = string (Computed)
}
