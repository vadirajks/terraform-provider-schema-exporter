resource "google_network_services_authz_extension" "name" {
  authority = string (Required)
  load_balancing_scheme = string (Required)
  location = string (Required)
  name = string (Required)
  service = string (Required)
  timeout = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  fail_open = bool (Optional, Computed)
  forward_headers = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  metadata = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)
  wire_format = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
