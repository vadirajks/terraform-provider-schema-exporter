data "azurerm_container_app_environment_certificate" "name" {
  container_app_environment_id = string (Required)
  name = string (Required)
  expiration_date = string (Computed)
  id = string (Optional, Computed)
  issue_date = string (Computed)
  issuer = string (Computed)
  subject_name = string (Computed)
  tags = ['map', 'string'] (Computed)
  thumbprint = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
