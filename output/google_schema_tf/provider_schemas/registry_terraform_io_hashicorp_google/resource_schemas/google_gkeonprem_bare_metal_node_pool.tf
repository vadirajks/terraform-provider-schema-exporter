resource "google_gkeonprem_bare_metal_node_pool" "name" {
  bare_metal_cluster = string (Required)
  location = string (Required)
  name = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  delete_time = string (Computed)
  display_name = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  state = string (Computed)
  status = ['list', ['object', {'conditions': ['list', ['object', {'last_transition_time': 'string', 'message': 'string', 'reason': 'string', 'state': 'string', 'type': 'string'}]], 'error_message': 'string'}]] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  node_pool_config block "list" (Required) {
    labels = ['map', 'string'] (Optional, Computed)
    operating_system = string (Optional, Computed)

    node_configs block "list" (Required) {
      labels = ['map', 'string'] (Optional)
      node_ip = string (Optional)
    }

    taints block "list" (Optional) {
      effect = string (Optional)
      key = string (Optional)
      value = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
