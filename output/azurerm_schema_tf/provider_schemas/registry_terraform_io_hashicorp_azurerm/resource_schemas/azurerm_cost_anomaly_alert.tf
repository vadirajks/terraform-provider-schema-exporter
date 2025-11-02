resource "azurerm_cost_anomaly_alert" "name" {
  display_name = string (Required)
  email_addresses = ['set', 'string'] (Required)
  email_subject = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  message = string (Optional)
  notification_email = string (Optional, Computed)
  subscription_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
