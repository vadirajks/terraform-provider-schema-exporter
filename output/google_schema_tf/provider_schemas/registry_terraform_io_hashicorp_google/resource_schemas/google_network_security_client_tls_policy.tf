resource "google_network_security_client_tls_policy" "name" {
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  project = string (Optional, Computed)
  sni = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  client_certificate block "list" (Optional) {

    certificate_provider_instance block "list" (Optional) {
      plugin_instance = string (Required)
    }

    grpc_endpoint block "list" (Optional) {
      target_uri = string (Required)
    }
  }

  server_validation_ca block "list" (Optional) {

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
