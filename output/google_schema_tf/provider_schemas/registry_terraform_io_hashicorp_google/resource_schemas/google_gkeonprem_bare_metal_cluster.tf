resource "google_gkeonprem_bare_metal_cluster" "name" {
  admin_cluster_membership = string (Required)
  bare_metal_version = string (Required)
  location = string (Required)
  name = string (Required)
  annotations = ['map', 'string'] (Optional)
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

  binary_authorization block "list" (Optional) {
    evaluation_mode = string (Optional)
  }

  cluster_operations block "list" (Optional) {
    enable_application_logs = bool (Optional)
  }

  control_plane block "list" (Required) {

    api_server_args block "list" (Optional) {
      argument = string (Required)
      value = string (Required)
    }

    control_plane_node_pool_config block "list" (Required) {

      node_pool_config block "list" (Required) {
        labels = ['map', 'string'] (Optional, Computed)
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

  load_balancer block "list" (Required) {

    bgp_lb_config block "list" (Optional) {
      asn = number (Required)

      address_pools block "list" (Required) {
        addresses = ['list', 'string'] (Required)
        pool = string (Required)
        avoid_buggy_ips = bool (Optional)
        manual_assign = bool (Optional)
      }

      bgp_peer_configs block "list" (Required) {
        asn = number (Required)
        ip_address = string (Required)
        control_plane_nodes = ['list', 'string'] (Optional)
      }

      load_balancer_node_pool_config block "list" (Optional) {

        node_pool_config block "list" (Optional) {
          labels = ['map', 'string'] (Optional)
          operating_system = string (Optional)

          kubelet_config block "list" (Optional) {
            registry_burst = number (Optional)
            registry_pull_qps = number (Optional)
            serialize_image_pulls_disabled = bool (Optional)
          }

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

    manual_lb_config block "list" (Optional) {
      enabled = bool (Required)
    }

    metal_lb_config block "list" (Optional) {

      address_pools block "list" (Required) {
        addresses = ['list', 'string'] (Required)
        pool = string (Required)
        avoid_buggy_ips = bool (Optional)
        manual_assign = bool (Optional)
      }

      load_balancer_node_pool_config block "list" (Optional) {

        node_pool_config block "list" (Optional) {
          labels = ['map', 'string'] (Optional, Computed)
          operating_system = string (Optional, Computed)

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

    port_config block "list" (Required) {
      control_plane_load_balancer_port = number (Required)
    }

    vip_config block "list" (Required) {
      control_plane_vip = string (Required)
      ingress_vip = string (Required)
    }
  }

  maintenance_config block "list" (Optional) {
    maintenance_address_cidr_blocks = ['list', 'string'] (Required)
  }

  network_config block "list" (Required) {
    advanced_networking = bool (Optional)

    island_mode_cidr block "list" (Optional) {
      pod_address_cidr_blocks = ['list', 'string'] (Required)
      service_address_cidr_blocks = ['list', 'string'] (Required)
    }

    multiple_network_interfaces_config block "list" (Optional) {
      enabled = bool (Optional)
    }

    sr_iov_config block "list" (Optional) {
      enabled = bool (Optional)
    }
  }

  node_access_config block "list" (Optional) {
    login_user = string (Optional, Computed)
  }

  node_config block "list" (Optional) {
    container_runtime = string (Optional, Computed)
    max_pods_per_node = number (Optional, Computed)
  }

  os_environment_config block "list" (Optional) {
    package_repo_excluded = bool (Required)
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

  storage block "list" (Required) {

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

  upgrade_policy block "list" (Optional) {
    policy = string (Optional)
  }
}
