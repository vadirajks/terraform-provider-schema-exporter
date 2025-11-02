resource "google_network_services_tls_route" "name" {
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  gateways = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  meshes = ['list', 'string'] (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)
  update_time = string (Computed)

  rules block "list" (Required) {

    action block "list" (Required) {

      destinations block "list" (Optional) {
        service_name = string (Optional)
        weight = number (Optional)
      }
    }

    matches block "list" (Required) {
      alpn = ['list', 'string'] (Optional)
      sni_host = ['list', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
