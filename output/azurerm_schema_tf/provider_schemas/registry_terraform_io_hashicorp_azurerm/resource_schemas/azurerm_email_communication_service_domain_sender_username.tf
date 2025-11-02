resource "azurerm_email_communication_service_domain_sender_username" "name" {
  email_service_domain_id = string (Required)
  name = string (Required)
  display_name = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
