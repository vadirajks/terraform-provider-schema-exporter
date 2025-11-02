resource "google_network_services_endpoint_policy" "name" {
  name = string (Required)
  type = string (Required)
  authorization_policy = string (Optional)
  client_tls_policy = string (Optional)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  server_tls_policy = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  endpoint_matcher block "list" (Required) {

    metadata_label_matcher block "list" (Required) {
      metadata_label_match_criteria = string (Required)

      metadata_labels block "list" (Optional) {
        label_name = string (Required)
        label_value = string (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  traffic_port_selector block "list" (Optional) {
    ports = ['list', 'string'] (Required)
  }
}
