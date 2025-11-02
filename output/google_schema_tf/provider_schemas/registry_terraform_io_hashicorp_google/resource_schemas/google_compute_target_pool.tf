resource "google_compute_target_pool" "name" {
  name = string (Required)
  backup_pool = string (Optional)
  description = string (Optional)
  failover_ratio = number (Optional)
  health_checks = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  instances = ['set', 'string'] (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)
  session_affinity = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
