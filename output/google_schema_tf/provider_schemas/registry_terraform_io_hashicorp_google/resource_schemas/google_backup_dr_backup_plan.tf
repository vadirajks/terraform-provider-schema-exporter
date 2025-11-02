resource "google_backup_dr_backup_plan" "name" {
  backup_plan_id = string (Required)
  backup_vault = string (Required)
  location = string (Required)
  resource_type = string (Required)
  backup_vault_service_account = string (Computed)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  log_retention_days = number (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  supported_resource_types = ['list', 'string'] (Computed)
  update_time = string (Computed)

  backup_rules block "list" (Required) {
    backup_retention_days = number (Required)
    rule_id = string (Required)

    standard_schedule block "list" (Required) {
      recurrence_type = string (Required)
      time_zone = string (Required)
      days_of_month = ['list', 'number'] (Optional)
      days_of_week = ['list', 'string'] (Optional)
      hourly_frequency = number (Optional)
      months = ['list', 'string'] (Optional)

      backup_window block "list" (Optional) {
        start_hour_of_day = number (Required)
        end_hour_of_day = number (Optional)
      }

      week_day_of_month block "list" (Optional) {
        day_of_week = string (Required)
        week_of_month = string (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
