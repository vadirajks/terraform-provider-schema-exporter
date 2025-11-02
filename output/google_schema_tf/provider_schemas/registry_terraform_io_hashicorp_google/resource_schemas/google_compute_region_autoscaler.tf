resource "google_compute_region_autoscaler" "name" {
  name = string (Required)
  target = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)

  autoscaling_policy block "list" (Required) {
    max_replicas = number (Required)
    min_replicas = number (Required)
    cooldown_period = number (Optional)
    mode = string (Optional)

    cpu_utilization block "list" (Optional) {
      target = number (Required)
      predictive_method = string (Optional)
    }

    load_balancing_utilization block "list" (Optional) {
      target = number (Required)
    }

    metric block "list" (Optional) {
      name = string (Required)
      filter = string (Optional)
      single_instance_assignment = number (Optional)
      target = number (Optional)
      type = string (Optional)
    }

    scale_in_control block "list" (Optional) {
      time_window_sec = number (Optional)

      max_scaled_in_replicas block "list" (Optional) {
        fixed = number (Optional)
        percent = number (Optional)
      }
    }

    scaling_schedules block "set" (Optional) {
      duration_sec = number (Required)
      min_required_replicas = number (Required)
      name = string (Required)
      schedule = string (Required)
      description = string (Optional)
      disabled = bool (Optional)
      time_zone = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
