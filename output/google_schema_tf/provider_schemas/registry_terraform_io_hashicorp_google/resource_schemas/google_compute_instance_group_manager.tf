resource "google_compute_instance_group_manager" "name" {
  base_instance_name = string (Required)
  name = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  instance_group = string (Computed)
  instance_group_manager_id = number (Computed)
  list_managed_instances_results = string (Optional)
  operation = string (Computed)
  project = string (Optional, Computed)
  self_link = string (Computed)
  status = ['list', ['object', {'all_instances_config': ['list', ['object', {'current_revision': 'string', 'effective': 'bool'}]], 'is_stable': 'bool', 'stateful': ['list', ['object', {'has_stateful_config': 'bool', 'per_instance_configs': ['list', ['object', {'all_effective': 'bool'}]]}]], 'version_target': ['list', ['object', {'is_reached': 'bool'}]]}]] (Computed)
  target_pools = ['set', 'string'] (Optional)
  target_size = number (Optional, Computed)
  target_stopped_size = number (Optional, Computed)
  target_suspended_size = number (Optional, Computed)
  wait_for_instances = bool (Optional)
  wait_for_instances_status = string (Optional)
  zone = string (Optional, Computed)

  all_instances_config block "list" (Optional) {
    labels = ['map', 'string'] (Optional)
    metadata = ['map', 'string'] (Optional)
  }

  auto_healing_policies block "list" (Optional) {
    health_check = string (Required)
    initial_delay_sec = number (Required)
  }

  instance_lifecycle_policy block "list" (Optional) {
    default_action_on_failure = string (Optional)
    force_update_on_repair = string (Optional)
  }

  named_port block "set" (Optional) {
    name = string (Required)
    port = number (Required)
  }

  resource_policies block "list" (Optional) {
    workload_policy = string (Optional)
  }

  standby_policy block "list" (Optional) {
    initial_delay_sec = number (Optional, Computed)
    mode = string (Optional, Computed)
  }

  stateful_disk block "set" (Optional) {
    device_name = string (Required)
    delete_rule = string (Optional)
  }

  stateful_external_ip block "list" (Optional) {
    delete_rule = string (Optional)
    interface_name = string (Optional)
  }

  stateful_internal_ip block "list" (Optional) {
    delete_rule = string (Optional)
    interface_name = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  update_policy block "list" (Optional) {
    minimal_action = string (Required)
    type = string (Required)
    max_surge_fixed = number (Optional, Computed)
    max_surge_percent = number (Optional)
    max_unavailable_fixed = number (Optional, Computed)
    max_unavailable_percent = number (Optional)
    most_disruptive_allowed_action = string (Optional)
    replacement_method = string (Optional)
  }

  version block "list" (Required) {
    instance_template = string (Required)
    name = string (Optional)

    target_size block "list" (Optional) {
      fixed = number (Optional)
      percent = number (Optional)
    }
  }
}
