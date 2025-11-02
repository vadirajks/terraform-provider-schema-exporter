resource "azurerm_communication_service_email_domain_association" "name" {
  communication_service_id = string (Required)
  email_service_domain_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
