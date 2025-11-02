resource "google_network_services_grpc_route" "name" {
  hostnames = ['list', 'string'] (Required)
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  gateways = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  meshes = ['list', 'string'] (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  rules block "list" (Required) {

    action block "list" (Optional) {
      timeout = string (Optional)

      destinations block "list" (Optional) {
        service_name = string (Optional)
        weight = number (Optional)
      }

      fault_injection_policy block "list" (Optional) {

        abort block "list" (Optional) {
          http_status = number (Optional)
          percentage = number (Optional)
        }

        delay block "list" (Optional) {
          fixed_delay = string (Optional)
          percentage = number (Optional)
        }
      }

      retry_policy block "list" (Optional) {
        num_retries = number (Optional)
        retry_conditions = ['list', 'string'] (Optional)
      }
    }

    matches block "list" (Optional) {

      headers block "list" (Optional) {
        key = string (Required)
        value = string (Required)
        type = string (Optional)
      }

      method block "list" (Optional) {
        grpc_method = string (Required)
        grpc_service = string (Required)
        case_sensitive = bool (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
