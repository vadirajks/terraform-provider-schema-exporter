resource "google_gkeonprem_vmware_admin_cluster" "name" {
  location = string (Required)
  name = string (Required)
  annotations = ['map', 'string'] (Optional, Computed)
  bootstrap_cluster_membership = string (Optional, Computed)
  create_time = string (Computed)
  description = string (Optional, Computed)
  effective_annotations = ['map', 'string'] (Computed)
  enable_advanced_cluster = bool (Optional, Computed)
  endpoint = string (Computed)
  etag = string (Computed)
  fleet = ['list', ['object', {'membership': 'string'}]] (Computed)
  id = string (Optional, Computed)
  image_type = string (Optional, Computed)
  local_name = string (Computed)
  on_prem_version = string (Optional)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  state = string (Computed)
  status = ['list', ['object', {'conditions': ['list', ['object', {'last_transition_time': 'string', 'message': 'string', 'reason': 'string', 'state': 'string', 'type': 'string'}]], 'error_message': 'string'}]] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  addon_node block "list" (Optional) {

    auto_resize_config block "list" (Optional) {
      enabled = bool (Required)
    }
  }

  anti_affinity_groups block "list" (Optional) {
    aag_config_disabled = bool (Required)
  }

  authorization block "list" (Optional) {

    viewer_users block "list" (Optional) {
      username = string (Required)
    }
  }

  auto_repair_config block "list" (Optional) {
    enabled = bool (Required)
  }

  control_plane_node block "list" (Optional) {
    cpus = number (Optional)
    memory = number (Optional)
    replicas = number (Optional)
  }

  load_balancer block "list" (Optional) {

    f5_config block "list" (Optional) {
      address = string (Optional)
      partition = string (Optional)
      snat_pool = string (Optional)
    }

    manual_lb_config block "list" (Optional) {
      addons_node_port = number (Optional, Computed)
      control_plane_node_port = number (Optional, Computed)
      ingress_http_node_port = number (Optional, Computed)
      ingress_https_node_port = number (Optional, Computed)
      konnectivity_server_node_port = number (Optional, Computed)
    }

    metal_lb_config block "list" (Optional) {
      enabled = bool (Optional)
    }

    vip_config block "list" (Required) {
      control_plane_vip = string (Required)
      addons_vip = string (Optional)
    }
  }

  network_config block "list" (Required) {
    pod_address_cidr_blocks = ['list', 'string'] (Required)
    service_address_cidr_blocks = ['list', 'string'] (Required)
    vcenter_network = string (Optional)

    dhcp_ip_config block "list" (Optional) {
      enabled = bool (Required)
    }

    ha_control_plane_config block "list" (Optional) {

      control_plane_ip_block block "list" (Optional) {
        gateway = string (Required)
        netmask = string (Required)

        ips block "list" (Required) {
          ip = string (Required)
          hostname = string (Optional, Computed)
        }
      }
    }

    host_config block "list" (Optional) {
      dns_search_domains = ['list', 'string'] (Optional)
      dns_servers = ['list', 'string'] (Optional)
      ntp_servers = ['list', 'string'] (Optional)
    }

    static_ip_config block "list" (Optional) {

      ip_blocks block "list" (Optional) {
        gateway = string (Required)
        netmask = string (Required)

        ips block "list" (Required) {
          ip = string (Required)
          hostname = string (Optional, Computed)
        }
      }
    }
  }

  platform_config block "list" (Optional) {
    bundles = ['list', ['object', {'status': ['list', ['object', {'conditions': ['list', ['object', {'last_transition_time': 'string', 'message': 'string', 'reason': 'string', 'state': 'string', 'type': 'string'}]], 'error_message': 'string'}]], 'version': 'string'}]] (Computed)
    platform_version = string (Computed)
    required_platform_version = string (Optional)
    status = ['list', ['object', {'conditions': ['list', ['object', {'last_transition_time': 'string', 'message': 'string', 'reason': 'string', 'state': 'string', 'type': 'string'}]], 'error_message': 'string'}]] (Computed)
  }

  private_registry_config block "list" (Optional) {
    address = string (Optional)
    ca_cert = string (Optional)
  }

  proxy block "list" (Optional) {
    url = string (Required)
    no_proxy = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vcenter block "list" (Optional) {
    address = string (Optional)
    ca_cert_data = string (Optional)
    cluster = string (Optional)
    data_disk = string (Optional)
    datacenter = string (Optional)
    datastore = string (Optional)
    folder = string (Optional)
    resource_pool = string (Optional)
    storage_policy_name = string (Optional)
  }
}
