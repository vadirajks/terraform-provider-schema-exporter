data "google_compute_zones" "name" {
  id = string (Optional, Computed)
  names = ['list', 'string'] (Computed)
  project = string (Optional, Computed)
  region = string (Optional)
  status = string (Optional)
}
