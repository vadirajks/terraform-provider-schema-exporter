resource "azurerm_cost_management_scheduled_action" "name" {
  display_name = string (Required)
  email_address_sender = string (Required)
  email_addresses = ['list', 'string'] (Required)
  email_subject = string (Required)
  end_date = string (Required)
  frequency = string (Required)
  name = string (Required)
  start_date = string (Required)
  view_id = string (Required)
  day_of_month = number (Optional)
  days_of_week = ['list', 'string'] (Optional)
  hour_of_day = number (Optional)
  id = string (Optional, Computed)
  message = string (Optional)
  weeks_of_month = ['list', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
