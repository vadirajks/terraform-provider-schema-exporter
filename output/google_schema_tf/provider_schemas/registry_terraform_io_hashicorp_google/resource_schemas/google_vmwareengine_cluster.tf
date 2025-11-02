resource "google_vmwareengine_cluster" "name" {
  name = string (Required)
  parent = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  management = bool (Computed)
  state = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)

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

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
