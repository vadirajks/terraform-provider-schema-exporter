data "azurerm_app_service_certificate" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  expiration_date = string (Computed)
  friendly_name = string (Computed)
  host_names = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  issue_date = string (Computed)
  issuer = string (Computed)
  location = string (Computed)
  subject_name = string (Computed)
  tags = ['map', 'string'] (Optional)
  thumbprint = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
