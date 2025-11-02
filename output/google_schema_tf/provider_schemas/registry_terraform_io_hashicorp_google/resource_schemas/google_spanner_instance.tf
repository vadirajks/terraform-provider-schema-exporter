resource "google_spanner_instance" "name" {
  config = string (Required)
  display_name = string (Required)
  default_backup_schedule_type = string (Optional, Computed)
  edition = string (Optional, Computed)
  effective_labels = ['map', 'string'] (Computed)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  instance_type = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Optional, Computed)
  num_nodes = number (Optional, Computed)
  processing_units = number (Optional, Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  autoscaling_config block "list" (Optional) {

    asymmetric_autoscaling_options block "list" (Optional) {

      overrides block "list" (Required) {

        autoscaling_limits block "list" (Required) {
          max_nodes = number (Required)
          min_nodes = number (Required)
        }
      }

      replica_selection block "list" (Required) {
        location = string (Required)
      }
    }

    autoscaling_limits block "list" (Optional) {
      max_nodes = number (Optional)
      max_processing_units = number (Optional)
      min_nodes = number (Optional)
      min_processing_units = number (Optional)
    }

    autoscaling_targets block "list" (Optional) {
      high_priority_cpu_utilization_percent = number (Optional)
      storage_utilization_percent = number (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
