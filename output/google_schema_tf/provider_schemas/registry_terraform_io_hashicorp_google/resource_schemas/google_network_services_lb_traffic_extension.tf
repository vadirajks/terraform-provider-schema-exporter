resource "google_network_services_lb_traffic_extension" "name" {
  forwarding_rules = ['list', 'string'] (Required)
  load_balancing_scheme = string (Required)
  location = string (Required)
  name = string (Required)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  extension_chains block "list" (Required) {
    name = string (Required)

    extensions block "list" (Required) {
      name = string (Required)
      service = string (Required)
      authority = string (Optional)
      fail_open = bool (Optional)
      forward_headers = ['list', 'string'] (Optional)
      metadata = ['map', 'string'] (Optional)
      supported_events = ['list', 'string'] (Optional)
      timeout = string (Optional)
    }

    match_condition block "list" (Required) {
      cel_expression = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
