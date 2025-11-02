resource "google_network_services_tcp_route" "name" {
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  gateways = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  meshes = ['list', 'string'] (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  rules block "list" (Required) {

    action block "list" (Required) {
      idle_timeout = string (Optional)
      original_destination = bool (Optional)

      destinations block "list" (Optional) {
        service_name = string (Optional)
        weight = number (Optional)
      }
    }

    matches block "list" (Optional) {
      address = string (Required)
      port = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
