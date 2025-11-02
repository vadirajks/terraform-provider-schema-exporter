resource "google_os_config_patch_deployment" "name" {
  patch_deployment_id = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  duration = string (Optional)
  id = string (Optional, Computed)
  last_execute_time = string (Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  instance_filter block "list" (Required) {
    all = bool (Optional)
    instance_name_prefixes = ['list', 'string'] (Optional)
    instances = ['list', 'string'] (Optional)
    zones = ['list', 'string'] (Optional)

    group_labels block "list" (Optional) {
      labels = ['map', 'string'] (Required)
    }
  }

  one_time_schedule block "list" (Optional) {
    execute_time = string (Required)
  }

  patch_config block "list" (Optional) {
    mig_instances_allowed = bool (Optional)
    reboot_config = string (Optional)

    apt block "list" (Optional) {
      excludes = ['list', 'string'] (Optional)
      exclusive_packages = ['list', 'string'] (Optional)
      type = string (Optional)
    }

    goo block "list" (Optional) {
      enabled = bool (Required)
    }

    post_step block "list" (Optional) {

      linux_exec_step_config block "list" (Optional) {
        allowed_success_codes = ['list', 'number'] (Optional)
        interpreter = string (Optional)
        local_path = string (Optional)

        gcs_object block "list" (Optional) {
          bucket = string (Required)
          generation_number = string (Required)
          object = string (Required)
        }
      }

      windows_exec_step_config block "list" (Optional) {
        allowed_success_codes = ['list', 'number'] (Optional)
        interpreter = string (Optional)
        local_path = string (Optional)

        gcs_object block "list" (Optional) {
          bucket = string (Required)
          generation_number = string (Required)
          object = string (Required)
        }
      }
    }

    pre_step block "list" (Optional) {

      linux_exec_step_config block "list" (Optional) {
        allowed_success_codes = ['list', 'number'] (Optional)
        interpreter = string (Optional)
        local_path = string (Optional)

        gcs_object block "list" (Optional) {
          bucket = string (Required)
          generation_number = string (Required)
          object = string (Required)
        }
      }

      windows_exec_step_config block "list" (Optional) {
        allowed_success_codes = ['list', 'number'] (Optional)
        interpreter = string (Optional)
        local_path = string (Optional)

        gcs_object block "list" (Optional) {
          bucket = string (Required)
          generation_number = string (Required)
          object = string (Required)
        }
      }
    }

    windows_update block "list" (Optional) {
      classifications = ['list', 'string'] (Optional)
      excludes = ['list', 'string'] (Optional)
      exclusive_patches = ['list', 'string'] (Optional)
    }

    yum block "list" (Optional) {
      excludes = ['list', 'string'] (Optional)
      exclusive_packages = ['list', 'string'] (Optional)
      minimal = bool (Optional)
      security = bool (Optional)
    }

    zypper block "list" (Optional) {
      categories = ['list', 'string'] (Optional)
      excludes = ['list', 'string'] (Optional)
      exclusive_patches = ['list', 'string'] (Optional)
      severities = ['list', 'string'] (Optional)
      with_optional = bool (Optional)
      with_update = bool (Optional)
    }
  }

  recurring_schedule block "list" (Optional) {
    end_time = string (Optional)
    last_execute_time = string (Computed)
    next_execute_time = string (Computed)
    start_time = string (Optional)

    monthly block "list" (Optional) {
      month_day = number (Optional)

      week_day_of_month block "list" (Optional) {
        day_of_week = string (Required)
        week_ordinal = number (Required)
        day_offset = number (Optional)
      }
    }

    time_of_day block "list" (Required) {
      hours = number (Optional)
      minutes = number (Optional)
      nanos = number (Optional)
      seconds = number (Optional)
    }

    time_zone block "list" (Required) {
      id = string (Required)
      version = string (Optional)
    }

    weekly block "list" (Optional) {
      day_of_week = string (Required)
    }
  }

  rollout block "list" (Optional) {
    mode = string (Required)

    disruption_budget block "list" (Required) {
      fixed = number (Optional)
      percentage = number (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
