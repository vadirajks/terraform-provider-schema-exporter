resource "azurerm_consumption_budget_management_group" "name" {
  amount = number (Required)
  management_group_id = string (Required)
  name = string (Required)
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
    contact_emails = ['list', 'string'] (Required)
    operator = string (Required)
    threshold = number (Required)
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
