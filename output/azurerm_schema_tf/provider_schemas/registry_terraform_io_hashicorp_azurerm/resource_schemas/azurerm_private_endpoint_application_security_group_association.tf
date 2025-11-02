resource "azurerm_private_endpoint_application_security_group_association" "name" {
  application_security_group_id = string (Required)
  private_endpoint_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
