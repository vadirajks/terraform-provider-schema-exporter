data "google_vmwareengine_cluster" "name" {
  name = string (Required)
  parent = string (Required)
  autoscaling_settings = ['list', ['object', {'autoscaling_policies': ['set', ['object', {'autoscale_policy_id': 'string', 'consumed_memory_thresholds': ['list', ['object', {'scale_in': 'number', 'scale_out': 'number'}]], 'cpu_thresholds': ['list', ['object', {'scale_in': 'number', 'scale_out': 'number'}]], 'node_type_id': 'string', 'scale_out_size': 'number', 'storage_thresholds': ['list', ['object', {'scale_in': 'number', 'scale_out': 'number'}]]}]], 'cool_down_period': 'string', 'max_cluster_node_count': 'number', 'min_cluster_node_count': 'number'}]] (Computed)
  create_time = string (Computed)
  id = string (Optional, Computed)
  management = bool (Computed)
  node_type_configs = ['set', ['object', {'custom_core_count': 'number', 'node_count': 'number', 'node_type_id': 'string'}]] (Computed)
  state = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)
}
