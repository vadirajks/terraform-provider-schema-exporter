resource "google_edgecontainer_cluster" "name" {
  location = string (Required)
  name = string (Required)
  cluster_ca_certificate = string (Computed)
  control_plane_version = string (Computed)
  create_time = string (Computed)
  default_max_pods_per_node = number (Optional, Computed)
  effective_labels = ['map', 'string'] (Computed)
  endpoint = string (Computed)
  external_load_balancer_ipv4_address_pools = ['list', 'string'] (Optional, Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  maintenance_events = ['list', ['object', {'create_time': 'string', 'end_time': 'string', 'operation': 'string', 'schedule': 'string', 'start_time': 'string', 'state': 'string', 'target_version': 'string', 'type': 'string', 'update_time': 'string', 'uuid': 'string'}]] (Computed)
  node_version = string (Computed)
  port = number (Computed)
  project = string (Optional, Computed)
  release_channel = string (Optional, Computed)
  status = string (Computed)
  target_version = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  authorization block "list" (Required) {

    admin_users block "list" (Required) {
      username = string (Required)
    }
  }

  control_plane block "list" (Optional) {

    local block "list" (Optional) {
      machine_filter = string (Optional)
      node_count = number (Optional, Computed)
      node_location = string (Optional, Computed)
      shared_deployment_policy = string (Optional, Computed)
    }

    remote block "list" (Optional) {
      node_location = string (Optional, Computed)
    }
  }

  control_plane_encryption block "list" (Optional) {
    kms_key = string (Optional, Computed)
    kms_key_active_version = string (Computed)
    kms_key_state = string (Computed)
    kms_status = ['list', ['object', {'code': 'number', 'message': 'string'}]] (Computed)
  }

  fleet block "list" (Required) {
    project = string (Required)
    membership = string (Computed)
  }

  maintenance_policy block "list" (Optional) {

    maintenance_exclusions block "list" (Optional) {
      id = string (Optional, Computed)

      window block "list" (Optional) {
        end_time = string (Optional, Computed)
        start_time = string (Optional, Computed)
      }
    }

    window block "list" (Required) {

      recurring_window block "list" (Required) {
        recurrence = string (Optional, Computed)

        window block "list" (Optional) {
          end_time = string (Optional, Computed)
          start_time = string (Optional, Computed)
        }
      }
    }
  }

  networking block "list" (Required) {
    cluster_ipv4_cidr_blocks = ['list', 'string'] (Required)
    services_ipv4_cidr_blocks = ['list', 'string'] (Required)
    cluster_ipv6_cidr_blocks = ['list', 'string'] (Optional)
    network_type = string (Computed)
    services_ipv6_cidr_blocks = ['list', 'string'] (Optional)
  }

  system_addons_config block "list" (Optional) {

    ingress block "list" (Optional) {
      disabled = bool (Optional, Computed)
      ipv4_vip = string (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
