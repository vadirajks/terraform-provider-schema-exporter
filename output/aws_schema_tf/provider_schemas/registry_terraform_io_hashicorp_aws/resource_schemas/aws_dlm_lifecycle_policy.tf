resource "aws_dlm_lifecycle_policy" "name" {
  description = string (Required)
  execution_role_arn = string (Required)
  arn = string (Computed)
  default_policy = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  state = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  policy_details block "list" (Required) {
    copy_tags = bool (Optional)
    create_interval = number (Optional)
    extend_deletion = bool (Optional)
    policy_language = string (Optional, Computed)
    policy_type = string (Optional)
    resource_locations = ['list', 'string'] (Optional, Computed)
    resource_type = string (Optional)
    resource_types = ['list', 'string'] (Optional)
    retain_interval = number (Optional)
    target_tags = ['map', 'string'] (Optional)

    action block "list" (Optional) {
      name = string (Required)

      cross_region_copy block "set" (Required) {
        target = string (Required)

        encryption_configuration block "list" (Required) {
          cmk_arn = string (Optional)
          encrypted = bool (Optional)
        }

        retain_rule block "list" (Optional) {
          interval = number (Required)
          interval_unit = string (Required)
        }
      }
    }

    event_source block "list" (Optional) {
      type = string (Required)

      parameters block "list" (Required) {
        description_regex = string (Required)
        event_type = string (Required)
        snapshot_owner = ['set', 'string'] (Required)
      }
    }

    exclusions block "list" (Optional) {
      exclude_boot_volumes = bool (Optional)
      exclude_tags = ['map', 'string'] (Optional)
      exclude_volume_types = ['list', 'string'] (Optional)
    }

    parameters block "list" (Optional) {
      exclude_boot_volume = bool (Optional)
      no_reboot = bool (Optional)
    }

    schedule block "list" (Optional) {
      name = string (Required)
      copy_tags = bool (Optional, Computed)
      tags_to_add = ['map', 'string'] (Optional)
      variable_tags = ['map', 'string'] (Optional)

      archive_rule block "list" (Optional) {

        archive_retain_rule block "list" (Required) {

          retention_archive_tier block "list" (Required) {
            count = number (Optional)
            interval = number (Optional)
            interval_unit = string (Optional)
          }
        }
      }

      create_rule block "list" (Required) {
        cron_expression = string (Optional)
        interval = number (Optional)
        interval_unit = string (Optional, Computed)
        location = string (Optional, Computed)
        times = ['list', 'string'] (Optional, Computed)

        scripts block "list" (Optional) {
          execution_handler = string (Required)
          execute_operation_on_script_failure = bool (Optional, Computed)
          execution_handler_service = string (Optional, Computed)
          execution_timeout = number (Optional, Computed)
          maximum_retry_count = number (Optional, Computed)
          stages = ['list', 'string'] (Optional)
        }
      }

      cross_region_copy_rule block "set" (Optional) {
        encrypted = bool (Required)
        cmk_arn = string (Optional)
        copy_tags = bool (Optional, Computed)
        target = string (Optional)
        target_region = string (Optional)

        deprecate_rule block "list" (Optional) {
          interval = number (Required)
          interval_unit = string (Required)
        }

        retain_rule block "list" (Optional) {
          interval = number (Required)
          interval_unit = string (Required)
        }
      }

      deprecate_rule block "list" (Optional) {
        count = number (Optional)
        interval = number (Optional)
        interval_unit = string (Optional)
      }

      fast_restore_rule block "list" (Optional) {
        availability_zones = ['set', 'string'] (Required)
        count = number (Optional)
        interval = number (Optional)
        interval_unit = string (Optional)
      }

      retain_rule block "list" (Required) {
        count = number (Optional)
        interval = number (Optional)
        interval_unit = string (Optional)
      }

      share_rule block "list" (Optional) {
        target_accounts = ['set', 'string'] (Required)
        unshare_interval = number (Optional)
        unshare_interval_unit = string (Optional)
      }
    }
  }
}
