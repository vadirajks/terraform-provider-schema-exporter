resource "google_gke_backup_backup_plan" "name" {
  cluster = string (Required)
  location = string (Required)
  name = string (Required)
  deactivated = bool (Optional, Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  protected_pod_count = number (Computed)
  state = string (Computed)
  state_reason = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)

  backup_config block "list" (Optional) {
    all_namespaces = bool (Optional)
    include_secrets = bool (Optional, Computed)
    include_volume_data = bool (Optional, Computed)
    permissive_mode = bool (Optional)

    encryption_key block "list" (Optional) {
      gcp_kms_encryption_key = string (Required)
    }

    selected_applications block "list" (Optional) {

      namespaced_names block "list" (Required) {
        name = string (Required)
        namespace = string (Required)
      }
    }

    selected_namespace_labels block "list" (Optional) {

      resource_labels block "list" (Required) {
        key = string (Required)
        value = string (Required)
      }
    }

    selected_namespaces block "list" (Optional) {
      namespaces = ['list', 'string'] (Required)
    }
  }

  backup_schedule block "list" (Optional) {
    cron_schedule = string (Optional)
    paused = bool (Optional, Computed)

    rpo_config block "list" (Optional) {
      target_rpo_minutes = number (Required)

      exclusion_windows block "list" (Optional) {
        duration = string (Required)
        daily = bool (Optional)

        days_of_week block "list" (Optional) {
          days_of_week = ['list', 'string'] (Optional)
        }

        single_occurrence_date block "list" (Optional) {
          day = number (Optional)
          month = number (Optional)
          year = number (Optional)
        }

        start_time block "list" (Required) {
          hours = number (Optional)
          minutes = number (Optional)
          nanos = number (Optional)
          seconds = number (Optional)
        }
      }
    }
  }

  retention_policy block "list" (Optional) {
    backup_delete_lock_days = number (Optional, Computed)
    backup_retain_days = number (Optional, Computed)
    locked = bool (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
