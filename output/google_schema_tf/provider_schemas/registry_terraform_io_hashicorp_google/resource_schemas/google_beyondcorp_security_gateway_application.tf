resource "google_beyondcorp_security_gateway_application" "name" {
  application_id = string (Required)
  security_gateway_id = string (Required)
  create_time = string (Computed)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  schema = string (Optional)
  update_time = string (Computed)

  endpoint_matchers block "list" (Optional) {
    hostname = string (Required)
    ports = ['list', 'number'] (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  upstreams block "list" (Optional) {

    egress_policy block "list" (Optional) {
      regions = ['list', 'string'] (Required)
    }

    external block "list" (Optional) {

      endpoints block "list" (Required) {
        hostname = string (Required)
        port = number (Required)
      }
    }

    network block "list" (Optional) {
      name = string (Required)
    }

    proxy_protocol block "list" (Optional) {
      allowed_client_headers = ['list', 'string'] (Optional)
      client_ip = bool (Optional)
      gateway_identity = string (Optional)
      metadata_headers = ['map', 'string'] (Optional)

      contextual_headers block "list" (Optional) {
        output_type = string (Optional)

        device_info block "list" (Optional) {
          output_type = string (Optional)
        }

        group_info block "list" (Optional) {
          output_type = string (Optional)
        }

        user_info block "list" (Optional) {
          output_type = string (Optional)
        }
      }
    }
  }
}
