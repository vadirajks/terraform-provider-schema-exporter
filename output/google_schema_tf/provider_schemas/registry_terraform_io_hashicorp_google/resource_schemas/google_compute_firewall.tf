resource "google_compute_firewall" "name" {
  name = string (Required)
  network = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  destination_ranges = ['set', 'string'] (Optional, Computed)
  direction = string (Optional, Computed)
  disabled = bool (Optional)
  enable_logging = bool (Optional, Computed)
  id = string (Optional, Computed)
  priority = number (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)
  source_ranges = ['set', 'string'] (Optional)
  source_service_accounts = ['set', 'string'] (Optional)
  source_tags = ['set', 'string'] (Optional)
  target_service_accounts = ['set', 'string'] (Optional)
  target_tags = ['set', 'string'] (Optional)

  allow block "set" (Optional) {
    protocol = string (Required)
    ports = ['list', 'string'] (Optional)
  }

  deny block "set" (Optional) {
    protocol = string (Required)
    ports = ['list', 'string'] (Optional)
  }

  log_config block "list" (Optional) {
    metadata = string (Required)
  }

  params block "list" (Optional) {
    resource_manager_tags = ['map', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
