data "google_compute_resource_policy" "name" {
  name = string (Required)
  description = string (Computed)
  disk_consistency_group_policy = ['list', ['object', {'enabled': 'bool'}]] (Computed)
  group_placement_policy = ['list', ['object', {'availability_domain_count': 'number', 'collocation': 'string', 'gpu_topology': 'string', 'vm_count': 'number'}]] (Computed)
  id = string (Optional, Computed)
  instance_schedule_policy = ['list', ['object', {'expiration_time': 'string', 'start_time': 'string', 'time_zone': 'string', 'vm_start_schedule': ['list', ['object', {'schedule': 'string'}]], 'vm_stop_schedule': ['list', ['object', {'schedule': 'string'}]]}]] (Computed)
  project = string (Optional)
  region = string (Optional)
  self_link = string (Computed)
  snapshot_schedule_policy = ['list', ['object', {'retention_policy': ['list', ['object', {'max_retention_days': 'number', 'on_source_disk_delete': 'string'}]], 'schedule': ['list', ['object', {'daily_schedule': ['list', ['object', {'days_in_cycle': 'number', 'start_time': 'string'}]], 'hourly_schedule': ['list', ['object', {'hours_in_cycle': 'number', 'start_time': 'string'}]], 'weekly_schedule': ['list', ['object', {'day_of_weeks': ['set', ['object', {'day': 'string', 'start_time': 'string'}]]}]]}]], 'snapshot_properties': ['list', ['object', {'chain_name': 'string', 'guest_flush': 'bool', 'labels': ['map', 'string'], 'storage_locations': ['set', 'string']}]]}]] (Computed)
  workload_policy = ['list', ['object', {'accelerator_topology': 'string', 'max_topology_distance': 'string', 'type': 'string'}]] (Computed)
}
