resource "google_network_connectivity_internal_range" "name" {
  name = string (Required)
  network = string (Required)
  peering = string (Required)
  usage = string (Required)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  exclude_cidr_ranges = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  immutable = bool (Optional)
  ip_cidr_range = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  overlaps = ['list', 'string'] (Optional)
  prefix_length = number (Optional)
  project = string (Optional, Computed)
  target_cidr_range = ['list', 'string'] (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  users = ['list', 'string'] (Computed)

  allocation_options block "list" (Optional) {
    allocation_strategy = string (Optional)
    first_available_ranges_lookup_size = number (Optional)
  }

  migration block "list" (Optional) {
    source = string (Required)
    target = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
