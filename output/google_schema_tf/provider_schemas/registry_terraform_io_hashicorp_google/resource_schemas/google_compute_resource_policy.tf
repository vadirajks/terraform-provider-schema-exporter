resource "google_compute_resource_policy" "name" {
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)

  disk_consistency_group_policy block "list" (Optional) {
    enabled = bool (Required)
  }

  group_placement_policy block "list" (Optional) {
    availability_domain_count = number (Optional)
    collocation = string (Optional)
    gpu_topology = string (Optional)
    vm_count = number (Optional)
  }

  instance_schedule_policy block "list" (Optional) {
    time_zone = string (Required)
    expiration_time = string (Optional)
    start_time = string (Optional)

    vm_start_schedule block "list" (Optional) {
      schedule = string (Required)
    }

    vm_stop_schedule block "list" (Optional) {
      schedule = string (Required)
    }
  }

  snapshot_schedule_policy block "list" (Optional) {

    retention_policy block "list" (Optional) {
      max_retention_days = number (Required)
      on_source_disk_delete = string (Optional)
    }

    schedule block "list" (Required) {

      daily_schedule block "list" (Optional) {
        days_in_cycle = number (Required)
        start_time = string (Required)
      }

      hourly_schedule block "list" (Optional) {
        hours_in_cycle = number (Required)
        start_time = string (Required)
      }

      weekly_schedule block "list" (Optional) {

        day_of_weeks block "set" (Required) {
          day = string (Required)
          start_time = string (Required)
        }
      }
    }

    snapshot_properties block "list" (Optional) {
      chain_name = string (Optional)
      guest_flush = bool (Optional)
      labels = ['map', 'string'] (Optional)
      storage_locations = ['set', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  workload_policy block "list" (Optional) {
    type = string (Required)
    accelerator_topology = string (Optional)
    max_topology_distance = string (Optional)
  }
}
