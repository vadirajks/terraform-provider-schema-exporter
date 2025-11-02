data "google_compute_regions" "name" {
  id = string (Optional, Computed)
  names = ['list', 'string'] (Computed)
  project = string (Optional, Computed)
  status = string (Optional)
}
