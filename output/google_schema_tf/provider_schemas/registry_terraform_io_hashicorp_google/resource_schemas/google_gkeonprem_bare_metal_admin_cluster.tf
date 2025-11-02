resource "google_gkeonprem_bare_metal_admin_cluster" "name" {
  location = string (Required)
  name = string (Required)
  annotations = ['map', 'string'] (Optional)
  bare_metal_version = string (Optional)
  create_time = string (Computed)
  delete_time = string (Computed)
  description = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  endpoint = string (Computed)
  etag = string (Computed)
  fleet = ['list', ['object', {'membership': 'string'}]] (Computed)
  id = string (Optional, Computed)
  local_name = string (Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  state = string (Computed)
  status = ['list', ['object', {'conditions': ['list', ['object', {'last_transition_time': 'string', 'message': 'string', 'reason': 'string', 'state': 'string', 'type': 'string'}]], 'error_message': 'string'}]] (Computed)
  uid = string (Computed)
  update_time = string (Computed)
  validation_check = ['list', ['object', {'options': 'string', 'scenario': 'string', 'status': ['list', ['object', {'result': ['list', ['object', {'category': 'string', 'description': 'string', 'details': 'string', 'options': 'string', 'reason': 'string'}]]}]]}]] (Computed)

  cluster_operations block "list" (Optional) {
    enable_application_logs = bool (Optional)
  }

  control_plane block "list" (Optional) {

    api_server_args block "list" (Optional) {
      argument = string (Required)
      value = string (Required)
    }

    control_plane_node_pool_config block "list" (Required) {

      node_pool_config block "list" (Required) {
        labels = ['map', 'string'] (Optional)
        operating_system = string (Optional)

        node_configs block "list" (Optional) {
          labels = ['map', 'string'] (Optional)
          node_ip = string (Optional)
        }

        taints block "list" (Optional) {
          effect = string (Optional)
          key = string (Optional)
          value = string (Optional)
        }
      }
    }
  }

  load_balancer block "list" (Optional) {

    manual_lb_config block "list" (Optional) {
      enabled = bool (Required)
    }

    port_config block "list" (Required) {
      control_plane_load_balancer_port = number (Required)
    }

    vip_config block "list" (Required) {
      control_plane_vip = string (Required)
    }
  }

  maintenance_config block "list" (Optional) {
    maintenance_address_cidr_blocks = ['list', 'string'] (Required)
  }

  network_config block "list" (Optional) {

    island_mode_cidr block "list" (Optional) {
      pod_address_cidr_blocks = ['list', 'string'] (Required)
      service_address_cidr_blocks = ['list', 'string'] (Required)
    }
  }

  node_access_config block "list" (Optional) {
    login_user = string (Optional)
  }

  node_config block "list" (Optional) {
    max_pods_per_node = number (Optional)
  }

  proxy block "list" (Optional) {
    uri = string (Required)
    no_proxy = ['list', 'string'] (Optional)
  }

  security_config block "list" (Optional) {

    authorization block "list" (Optional) {

      admin_users block "list" (Required) {
        username = string (Required)
      }
    }
  }

  storage block "list" (Optional) {

    lvp_node_mounts_config block "list" (Required) {
      path = string (Required)
      storage_class = string (Required)
    }

    lvp_share_config block "list" (Required) {
      shared_path_pv_count = number (Optional)

      lvp_config block "list" (Required) {
        path = string (Required)
        storage_class = string (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
