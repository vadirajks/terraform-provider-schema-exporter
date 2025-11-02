resource "google_network_connectivity_service_connection_policy" "name" {
  location = string (Required)
  name = string (Required)
  network = string (Required)
  service_class = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  infrastructure = string (Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  psc_connections = ['list', ['object', {'consumer_address': 'string', 'consumer_forwarding_rule': 'string', 'consumer_target_project': 'string', 'error': ['list', ['object', {'code': 'number', 'details': ['list', ['map', 'string']], 'message': 'string'}]], 'error_info': ['list', ['object', {'domain': 'string', 'metadata': ['map', 'string'], 'reason': 'string'}]], 'error_type': 'string', 'gce_operation': 'string', 'psc_connection_id': 'string', 'state': 'string'}]] (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  psc_config block "list" (Optional) {
    subnetworks = ['list', 'string'] (Required)
    allowed_google_producers_resource_hierarchy_level = ['list', 'string'] (Optional)
    limit = string (Optional)
    producer_instance_location = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
