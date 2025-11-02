resource "azurerm_consumption_budget_subscription" "name" {
  amount = number (Required)
  name = string (Required)
  subscription_id = string (Required)
  etag = string (Optional, Computed)
  id = string (Optional, Computed)
  time_grain = string (Optional)

  filter block "list" (Optional) {

    dimension block "set" (Optional) {
      name = string (Required)
      values = ['list', 'string'] (Required)
      operator = string (Optional)
    }

    tag block "set" (Optional) {
      name = string (Required)
      values = ['list', 'string'] (Required)
      operator = string (Optional)
    }
  }

  notification block "set" (Required) {
    operator = string (Required)
    threshold = number (Required)
    contact_emails = ['list', 'string'] (Optional)
    contact_groups = ['list', 'string'] (Optional)
    contact_roles = ['list', 'string'] (Optional)
    enabled = bool (Optional)
    threshold_type = string (Optional)
  }

  time_period block "list" (Required) {
    start_date = string (Required)
    end_date = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
