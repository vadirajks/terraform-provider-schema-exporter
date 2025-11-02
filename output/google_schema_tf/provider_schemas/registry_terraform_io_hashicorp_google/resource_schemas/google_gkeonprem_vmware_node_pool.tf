resource "google_gkeonprem_vmware_node_pool" "name" {
  location = string (Required)
  name = string (Required)
  vmware_cluster = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  delete_time = string (Computed)
  display_name = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  on_prem_version = string (Optional)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  state = string (Computed)
  status = ['list', ['object', {'conditions': ['list', ['object', {'last_transition_time': 'string', 'message': 'string', 'reason': 'string', 'state': 'string', 'type': 'string'}]], 'error_message': 'string'}]] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  config block "list" (Required) {
    image_type = string (Required)
    boot_disk_size_gb = number (Optional)
    cpus = number (Optional)
    enable_load_balancer = bool (Optional)
    image = string (Optional, Computed)
    labels = ['map', 'string'] (Optional, Computed)
    memory_mb = number (Optional)
    replicas = number (Optional)

    taints block "list" (Optional) {
      key = string (Required)
      value = string (Required)
      effect = string (Optional)
    }

    vsphere_config block "list" (Optional) {
      datastore = string (Optional)
      host_groups = ['list', 'string'] (Optional)

      tags block "list" (Optional) {
        category = string (Optional)
        tag = string (Optional)
      }
    }
  }

  node_pool_autoscaling block "list" (Optional) {
    max_replicas = number (Required)
    min_replicas = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
