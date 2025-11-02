resource "azurerm_application_insights_smart_detection_rule" "name" {
  application_insights_id = string (Required)
  name = string (Required)
  additional_email_recipients = ['set', 'string'] (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  send_emails_to_subscription_owners = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
