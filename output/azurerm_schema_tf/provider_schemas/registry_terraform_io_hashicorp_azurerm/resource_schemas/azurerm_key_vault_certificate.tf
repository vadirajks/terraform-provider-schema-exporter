resource "azurerm_key_vault_certificate" "name" {
  key_vault_id = string (Required)
  name = string (Required)
  certificate_attribute = ['list', ['object', {'created': 'string', 'enabled': 'bool', 'expires': 'string', 'not_before': 'string', 'recovery_level': 'string', 'updated': 'string'}]] (Computed)
  certificate_data = string (Computed)
  certificate_data_base64 = string (Computed)
  id = string (Optional, Computed)
  resource_manager_id = string (Computed)
  resource_manager_versionless_id = string (Computed)
  secret_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  thumbprint = string (Computed)
  version = string (Computed)
  versionless_id = string (Computed)
  versionless_secret_id = string (Computed)

  certificate block "list" (Optional) {
    contents = string (Required)
    password = string (Optional)
  }

  certificate_policy block "list" (Optional) {

    issuer_parameters block "list" (Required) {
      name = string (Required)
    }

    key_properties block "list" (Required) {
      exportable = bool (Required)
      key_type = string (Required)
      reuse_key = bool (Required)
      curve = string (Optional, Computed)
      key_size = number (Optional, Computed)
    }

    lifetime_action block "list" (Optional) {

      action block "list" (Required) {
        action_type = string (Required)
      }

      trigger block "list" (Required) {
        days_before_expiry = number (Optional)
        lifetime_percentage = number (Optional)
      }
    }

    secret_properties block "list" (Required) {
      content_type = string (Required)
    }

    x509_certificate_properties block "list" (Optional) {
      key_usage = ['set', 'string'] (Required)
      subject = string (Required)
      validity_in_months = number (Required)
      extended_key_usage = ['list', 'string'] (Optional, Computed)

      subject_alternative_names block "list" (Optional) {
        dns_names = ['set', 'string'] (Optional)
        emails = ['set', 'string'] (Optional)
        upns = ['set', 'string'] (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
