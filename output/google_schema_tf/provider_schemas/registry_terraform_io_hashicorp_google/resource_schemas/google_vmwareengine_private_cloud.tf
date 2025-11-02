resource "google_vmwareengine_private_cloud" "name" {
  location = string (Required)
  name = string (Required)
  create_time = string (Computed)
  delete_time = string (Computed)
  deletion_delay_hours = number (Optional)
  description = string (Optional)
  expire_time = string (Computed)
  hcx = ['list', ['object', {'fqdn': 'string', 'internal_ip': 'string', 'state': 'string', 'version': 'string'}]] (Computed)
  id = string (Optional, Computed)
  nsx = ['list', ['object', {'fqdn': 'string', 'internal_ip': 'string', 'state': 'string', 'version': 'string'}]] (Computed)
  project = string (Optional, Computed)
  send_deletion_delay_hours_if_zero = bool (Optional)
  state = string (Computed)
  type = string (Optional)
  uid = string (Computed)
  update_time = string (Computed)
  vcenter = ['list', ['object', {'fqdn': 'string', 'internal_ip': 'string', 'state': 'string', 'version': 'string'}]] (Computed)

  management_cluster block "list" (Required) {
    cluster_id = string (Required)

    autoscaling_settings block "list" (Optional) {
      cool_down_period = string (Optional)
      max_cluster_node_count = number (Optional)
      min_cluster_node_count = number (Optional)

      autoscaling_policies block "set" (Required) {
        autoscale_policy_id = string (Required)
        node_type_id = string (Required)
        scale_out_size = number (Required)

        consumed_memory_thresholds block "list" (Optional) {
          scale_in = number (Required)
          scale_out = number (Required)
        }

        cpu_thresholds block "list" (Optional) {
          scale_in = number (Required)
          scale_out = number (Required)
        }

        storage_thresholds block "list" (Optional) {
          scale_in = number (Required)
          scale_out = number (Required)
        }
      }
    }

    node_type_configs block "set" (Optional) {
      node_count = number (Required)
      node_type_id = string (Required)
      custom_core_count = number (Optional)
    }

    stretched_cluster_config block "list" (Optional) {
      preferred_location = string (Optional)
      secondary_location = string (Optional)
    }
  }

  network_config block "list" (Required) {
    management_cidr = string (Required)
    dns_server_ip = string (Computed)
    management_ip_address_layout_version = number (Computed)
    vmware_engine_network = string (Optional)
    vmware_engine_network_canonical = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
