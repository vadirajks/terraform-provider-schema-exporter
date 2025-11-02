resource "google_dataproc_autoscaling_policy" "name" {
  policy_id = string (Required)
  id = string (Optional, Computed)
  location = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)

  basic_algorithm block "list" (Optional) {
    cooldown_period = string (Optional)

    yarn_config block "list" (Required) {
      graceful_decommission_timeout = string (Required)
      scale_down_factor = number (Required)
      scale_up_factor = number (Required)
      scale_down_min_worker_fraction = number (Optional)
      scale_up_min_worker_fraction = number (Optional)
    }
  }

  secondary_worker_config block "list" (Optional) {
    max_instances = number (Optional)
    min_instances = number (Optional)
    weight = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  worker_config block "list" (Optional) {
    max_instances = number (Required)
    min_instances = number (Optional)
    weight = number (Optional)
  }
}
