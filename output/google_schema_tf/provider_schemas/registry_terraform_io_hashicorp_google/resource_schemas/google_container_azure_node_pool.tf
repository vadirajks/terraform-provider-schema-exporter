resource "google_container_azure_node_pool" "name" {
  cluster = string (Required)
  location = string (Required)
  name = string (Required)
  subnet_id = string (Required)
  version = string (Required)
  annotations = ['map', 'string'] (Optional)
  azure_availability_zone = string (Optional, Computed)
  create_time = string (Computed)
  effective_annotations = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  state = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  autoscaling block "list" (Required) {
    max_node_count = number (Required)
    min_node_count = number (Required)
  }

  config block "list" (Required) {
    labels = ['map', 'string'] (Optional)
    tags = ['map', 'string'] (Optional)
    vm_size = string (Optional, Computed)

    proxy_config block "list" (Optional) {
      resource_group_id = string (Required)
      secret_id = string (Required)
    }

    root_volume block "list" (Optional) {
      size_gib = number (Optional, Computed)
    }

    ssh_config block "list" (Required) {
      authorized_key = string (Required)
    }
  }

  management block "list" (Optional) {
    auto_repair = bool (Optional, Computed)
  }

  max_pods_constraint block "list" (Required) {
    max_pods_per_node = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
