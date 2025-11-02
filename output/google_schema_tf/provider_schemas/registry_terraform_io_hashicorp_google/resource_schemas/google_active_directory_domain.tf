resource "google_active_directory_domain" "name" {
  domain_name = string (Required)
  locations = ['list', 'string'] (Required)
  reserved_ip_range = string (Required)
  admin = string (Optional)
  authorized_networks = ['set', 'string'] (Optional)
  deletion_protection = bool (Optional)
  effective_labels = ['map', 'string'] (Computed)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
