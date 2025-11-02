resource "azurerm_security_center_contact" "name" {
  alert_notifications = bool (Required)
  alerts_to_admins = bool (Required)
  email = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  phone = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
