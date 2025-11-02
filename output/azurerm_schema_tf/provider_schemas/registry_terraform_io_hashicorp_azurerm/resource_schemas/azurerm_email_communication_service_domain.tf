resource "azurerm_email_communication_service_domain" "name" {
  domain_management = string (Required)
  email_service_id = string (Required)
  name = string (Required)
  from_sender_domain = string (Computed)
  id = string (Optional, Computed)
  mail_from_sender_domain = string (Computed)
  tags = ['map', 'string'] (Optional)
  user_engagement_tracking_enabled = bool (Optional)
  verification_records = ['list', ['object', {'dkim': ['list', ['object', {'name': 'string', 'ttl': 'number', 'type': 'string', 'value': 'string'}]], 'dkim2': ['list', ['object', {'name': 'string', 'ttl': 'number', 'type': 'string', 'value': 'string'}]], 'dmarc': ['list', ['object', {'name': 'string', 'ttl': 'number', 'type': 'string', 'value': 'string'}]], 'domain': ['list', ['object', {'name': 'string', 'ttl': 'number', 'type': 'string', 'value': 'string'}]], 'spf': ['list', ['object', {'name': 'string', 'ttl': 'number', 'type': 'string', 'value': 'string'}]]}]] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
