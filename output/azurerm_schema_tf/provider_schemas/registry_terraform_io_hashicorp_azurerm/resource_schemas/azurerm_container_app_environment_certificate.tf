resource "azurerm_container_app_environment_certificate" "name" {
  certificate_blob_base64 = string (Required)
  certificate_password = string (Required)
  container_app_environment_id = string (Required)
  name = string (Required)
  expiration_date = string (Computed)
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
