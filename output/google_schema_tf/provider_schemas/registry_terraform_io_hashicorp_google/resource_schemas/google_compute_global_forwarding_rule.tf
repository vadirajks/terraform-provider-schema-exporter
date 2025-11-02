resource "google_compute_global_forwarding_rule" "name" {
  name = string (Required)
  target = string (Required)
  base_forwarding_rule = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  external_managed_backend_bucket_migration_state = string (Optional)
  external_managed_backend_bucket_migration_testing_percentage = number (Optional)
  forwarding_rule_id = number (Computed)
  id = string (Optional, Computed)
  ip_address = string (Optional, Computed)
  ip_protocol = string (Optional, Computed)
  ip_version = string (Optional)
  label_fingerprint = string (Computed)
  labels = ['map', 'string'] (Optional)
  load_balancing_scheme = string (Optional)
  network = string (Optional, Computed)
  network_tier = string (Optional, Computed)
  no_automate_dns_zone = bool (Optional)
  port_range = string (Optional)
  project = string (Optional, Computed)
  psc_connection_id = string (Computed)
  psc_connection_status = string (Computed)
  self_link = string (Computed)
  source_ip_ranges = ['list', 'string'] (Optional)
  subnetwork = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  metadata_filters block "list" (Optional) {
    filter_match_criteria = string (Required)

    filter_labels block "list" (Required) {
      name = string (Required)
      value = string (Required)
    }
  }

  service_directory_registrations block "list" (Optional) {
    namespace = string (Optional, Computed)
    service_directory_region = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
