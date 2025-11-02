resource "google_billing_budget" "name" {
  billing_account = string (Required)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  ownership_scope = string (Optional)

  all_updates_rule block "list" (Optional) {
    disable_default_iam_recipients = bool (Optional)
    enable_project_level_recipients = bool (Optional)
    monitoring_notification_channels = ['list', 'string'] (Optional)
    pubsub_topic = string (Optional)
    schema_version = string (Optional)
  }

  amount block "list" (Required) {
    last_period_amount = bool (Optional)

    specified_amount block "list" (Optional) {
      currency_code = string (Optional, Computed)
      nanos = number (Optional)
      units = string (Optional)
    }
  }

  budget_filter block "list" (Optional) {
    calendar_period = string (Optional)
    credit_types = ['list', 'string'] (Optional)
    credit_types_treatment = string (Optional)
    labels = ['map', 'string'] (Optional, Computed)
    projects = ['set', 'string'] (Optional)
    resource_ancestors = ['set', 'string'] (Optional)
    services = ['list', 'string'] (Optional, Computed)
    subaccounts = ['list', 'string'] (Optional)

    custom_period block "list" (Optional) {

      end_date block "list" (Optional) {
        day = number (Required)
        month = number (Required)
        year = number (Required)
      }

      start_date block "list" (Required) {
        day = number (Required)
        month = number (Required)
        year = number (Required)
      }
    }
  }

  threshold_rules block "list" (Optional) {
    threshold_percent = number (Required)
    spend_basis = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
