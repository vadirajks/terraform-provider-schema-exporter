resource "google_clouddeploy_automation" "name" {
  delivery_pipeline = string (Required)
  location = string (Required)
  name = string (Required)
  service_account = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  description = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  suspended = bool (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  rules block "list" (Required) {

    advance_rollout_rule block "list" (Optional) {
      id = string (Required)
      source_phases = ['list', 'string'] (Optional)
      wait = string (Optional)
    }

    promote_release_rule block "list" (Optional) {
      id = string (Required)
      destination_phase = string (Optional)
      destination_target_id = string (Optional)
      wait = string (Optional)
    }

    repair_rollout_rule block "list" (Optional) {
      id = string (Required)
      jobs = ['list', 'string'] (Optional)
      phases = ['list', 'string'] (Optional)

      repair_phases block "list" (Optional) {

        retry block "list" (Optional) {
          attempts = string (Required)
          backoff_mode = string (Optional)
          wait = string (Optional)
        }

        rollback block "list" (Optional) {
          destination_phase = string (Optional)
          disable_rollback_if_rollout_pending = bool (Optional)
        }
      }
    }

    timed_promote_release_rule block "list" (Optional) {
      id = string (Required)
      schedule = string (Required)
      time_zone = string (Required)
      destination_phase = string (Optional)
      destination_target_id = string (Optional)
    }
  }

  selector block "list" (Required) {

    targets block "list" (Required) {
      id = string (Optional)
      labels = ['map', 'string'] (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
