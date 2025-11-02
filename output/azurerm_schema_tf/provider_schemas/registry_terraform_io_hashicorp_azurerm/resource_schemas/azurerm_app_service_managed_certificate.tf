resource "azurerm_app_service_managed_certificate" "name" {
  custom_hostname_binding_id = string (Required)
  canonical_name = string (Computed)
  expiration_date = string (Computed)
  friendly_name = string (Computed)
  host_names = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  issue_date = string (Computed)
  issuer = string (Computed)
  subject_name = string (Computed)
  tags = ['map', 'string'] (Optional)
  thumbprint = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
