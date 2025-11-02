resource "azurerm_app_service_certificate" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  app_service_plan_id = string (Optional)
  expiration_date = string (Computed)
  friendly_name = string (Computed)
  host_names = ['list', 'string'] (Computed)
  hosting_environment_profile_id = string (Computed)
  id = string (Optional, Computed)
  issue_date = string (Computed)
  issuer = string (Computed)
  key_vault_id = string (Optional)
  key_vault_secret_id = string (Optional)
  password = string (Optional)
  pfx_blob = string (Optional)
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
