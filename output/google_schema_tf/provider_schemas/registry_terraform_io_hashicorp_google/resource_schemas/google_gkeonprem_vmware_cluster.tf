resource "google_gkeonprem_vmware_cluster" "name" {
  admin_cluster_membership = string (Required)
  location = string (Required)
  name = string (Required)
  on_prem_version = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  delete_time = string (Computed)
  description = string (Optional)
  disable_bundled_ingress = bool (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  enable_advanced_cluster = bool (Optional)
  enable_control_plane_v2 = bool (Optional)
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
  vm_tracking_enabled = bool (Optional, Computed)

  anti_affinity_groups block "list" (Optional) {
    aag_config_disabled = bool (Required)
  }

  authorization block "list" (Optional) {

    admin_users block "list" (Optional) {
      username = string (Required)
    }
  }

  auto_repair_config block "list" (Optional) {
    enabled = bool (Required)
  }

  control_plane_node block "list" (Required) {
    cpus = number (Optional)
    memory = number (Optional)
    replicas = number (Optional)
    vsphere_config = ['list', ['object', {'datastore': 'string', 'storage_policy_name': 'string'}]] (Computed)

    auto_resize_config block "list" (Optional) {
      enabled = bool (Required)
    }
  }

  dataplane_v2 block "list" (Optional) {
    advanced_networking = bool (Optional)
    dataplane_v2_enabled = bool (Optional)
    windows_dataplane_v2_enabled = bool (Optional)
  }

  load_balancer block "list" (Optional) {

    f5_config block "list" (Optional) {
      address = string (Optional)
      partition = string (Optional)
      snat_pool = string (Optional, Computed)
    }

    manual_lb_config block "list" (Optional) {
      control_plane_node_port = number (Optional, Computed)
      ingress_http_node_port = number (Optional, Computed)
      ingress_https_node_port = number (Optional, Computed)
      konnectivity_server_node_port = number (Optional, Computed)
    }

    metal_lb_config block "list" (Optional) {

      address_pools block "list" (Required) {
        addresses = ['list', 'string'] (Required)
        pool = string (Required)
        avoid_buggy_ips = bool (Optional, Computed)
        manual_assign = bool (Optional, Computed)
      }
    }

    vip_config block "list" (Optional) {
      control_plane_vip = string (Optional)
      ingress_vip = string (Optional)
    }
  }

  network_config block "list" (Optional) {
    pod_address_cidr_blocks = ['list', 'string'] (Required)
    service_address_cidr_blocks = ['list', 'string'] (Required)
    vcenter_network = string (Optional, Computed)

    control_plane_v2_config block "list" (Optional) {

      control_plane_ip_block block "list" (Optional) {
        gateway = string (Optional)
        netmask = string (Optional)

        ips block "list" (Optional) {
          hostname = string (Optional, Computed)
          ip = string (Optional)
        }
      }
    }

    dhcp_ip_config block "list" (Optional) {
      enabled = bool (Required)
    }

    host_config block "list" (Optional) {
      dns_search_domains = ['list', 'string'] (Optional)
      dns_servers = ['list', 'string'] (Optional)
      ntp_servers = ['list', 'string'] (Optional)
    }

    static_ip_config block "list" (Optional) {

      ip_blocks block "list" (Required) {
        gateway = string (Required)
        netmask = string (Required)

        ips block "list" (Required) {
          ip = string (Required)
          hostname = string (Optional, Computed)
        }
      }
    }
  }

  storage block "list" (Optional) {
    vsphere_csi_disabled = bool (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  upgrade_policy block "list" (Optional) {
    control_plane_only = bool (Optional)
  }

  vcenter block "list" (Optional) {
    address = string (Computed)
    ca_cert_data = string (Optional, Computed)
    cluster = string (Optional, Computed)
    datacenter = string (Optional, Computed)
    datastore = string (Optional, Computed)
    folder = string (Optional, Computed)
    resource_pool = string (Optional, Computed)
    storage_policy_name = string (Optional, Computed)
  }
}
