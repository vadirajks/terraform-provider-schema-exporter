resource "google_vertex_ai_index_endpoint_deployed_index" "name" {
  deployed_index_id = string (Required)
  index = string (Required)
  index_endpoint = string (Required)
  create_time = string (Computed)
  deployment_group = string (Optional)
  display_name = string (Optional)
  enable_access_logging = bool (Optional)
  id = string (Optional, Computed)
  index_sync_time = string (Computed)
  name = string (Computed)
  private_endpoints = ['list', ['object', {'match_grpc_address': 'string', 'psc_automated_endpoints': ['list', ['object', {'match_address': 'string', 'network': 'string', 'project_id': 'string'}]], 'service_attachment': 'string'}]] (Computed)
  region = string (Optional)
  reserved_ip_ranges = ['list', 'string'] (Optional)

  automatic_resources block "list" (Optional) {
    max_replica_count = number (Optional, Computed)
    min_replica_count = number (Optional, Computed)
  }

  dedicated_resources block "list" (Optional) {
    min_replica_count = number (Required)
    max_replica_count = number (Optional, Computed)

    machine_spec block "list" (Required) {
      machine_type = string (Optional)
    }
  }

  deployed_index_auth_config block "list" (Optional) {

    auth_provider block "list" (Optional) {
      allowed_issuers = ['list', 'string'] (Optional)
      audiences = ['list', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
