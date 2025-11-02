resource "azurerm_automanage_configuration" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  automation_account_enabled = bool (Optional)
  boot_diagnostics_enabled = bool (Optional)
  defender_for_cloud_enabled = bool (Optional)
  guest_configuration_enabled = bool (Optional)
  id = string (Optional, Computed)
  log_analytics_enabled = bool (Optional)
  status_change_alert_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

  antimalware block "list" (Optional) {
    real_time_protection_enabled = bool (Optional)
    scheduled_scan_day = number (Optional)
    scheduled_scan_enabled = bool (Optional)
    scheduled_scan_time_in_minutes = number (Optional)
    scheduled_scan_type = string (Optional)

    exclusions block "list" (Optional) {
      extensions = string (Optional)
      paths = string (Optional)
      processes = string (Optional)
    }
  }

  azure_security_baseline block "list" (Optional) {
    assignment_type = string (Optional)
  }

  backup block "list" (Optional) {
    instant_rp_retention_range_in_days = number (Optional)
    policy_name = string (Optional)
    time_zone = string (Optional)

    retention_policy block "list" (Optional) {
      retention_policy_type = string (Optional)

      daily_schedule block "list" (Optional) {
        retention_times = ['list', 'string'] (Optional)

        retention_duration block "list" (Optional) {
          count = number (Optional)
          duration_type = string (Optional)
        }
      }

      weekly_schedule block "list" (Optional) {
        retention_times = ['list', 'string'] (Optional)

        retention_duration block "list" (Optional) {
          count = number (Optional)
          duration_type = string (Optional)
        }
      }
    }

    schedule_policy block "list" (Optional) {
      schedule_policy_type = string (Optional)
      schedule_run_days = ['list', 'string'] (Optional)
      schedule_run_frequency = string (Optional)
      schedule_run_times = ['list', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
