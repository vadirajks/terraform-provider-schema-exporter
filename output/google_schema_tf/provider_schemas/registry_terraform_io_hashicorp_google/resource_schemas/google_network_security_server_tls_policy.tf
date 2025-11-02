resource "google_network_security_server_tls_policy" "name" {
  name = string (Required)
  allow_open = bool (Optional)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  mtls_policy block "list" (Optional) {
    client_validation_mode = string (Optional)
    client_validation_trust_config = string (Optional)

    client_validation_ca block "list" (Optional) {

      certificate_provider_instance block "list" (Optional) {
        plugin_instance = string (Required)
      }

      grpc_endpoint block "list" (Optional) {
        target_uri = string (Required)
      }
    }
  }

  server_certificate block "list" (Optional) {

    certificate_provider_instance block "list" (Optional) {
      plugin_instance = string (Required)
    }

    grpc_endpoint block "list" (Optional) {
      target_uri = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
