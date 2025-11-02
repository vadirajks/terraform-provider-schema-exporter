resource "google_beyondcorp_security_gateway" "name" {
  security_gateway_id = string (Required)
  create_time = string (Computed)
  delegating_service_account = string (Computed)
  display_name = string (Optional)
  external_ips = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  location = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  update_time = string (Computed)

  hubs block "set" (Optional) {
    region = string (Required)

    internet_gateway block "list" (Optional) {
      assigned_ips = ['list', 'string'] (Computed)
    }
  }

  proxy_protocol_config block "list" (Optional) {
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

  service_discovery block "list" (Optional) {

    api_gateway block "list" (Optional) {

      resource_override block "list" (Optional) {
        path = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
