data "azurerm_key_vault_certificate" "name" {
  key_vault_id = string (Required)
  name = string (Required)
  certificate_data = string (Computed)
  certificate_data_base64 = string (Computed)
  certificate_policy = ['list', ['object', {'issuer_parameters': ['list', ['object', {'name': 'string'}]], 'key_properties': ['list', ['object', {'curve': 'string', 'exportable': 'bool', 'key_size': 'number', 'key_type': 'string', 'reuse_key': 'bool'}]], 'lifetime_action': ['list', ['object', {'action': ['list', ['object', {'action_type': 'string'}]], 'trigger': ['list', ['object', {'days_before_expiry': 'number', 'lifetime_percentage': 'number'}]]}]], 'secret_properties': ['list', ['object', {'content_type': 'string'}]], 'x509_certificate_properties': ['list', ['object', {'extended_key_usage': ['list', 'string'], 'key_usage': ['list', 'string'], 'subject': 'string', 'subject_alternative_names': ['list', ['object', {'dns_names': ['list', 'string'], 'emails': ['list', 'string'], 'upns': ['list', 'string']}]], 'validity_in_months': 'number'}]]}]] (Computed)
  expires = string (Computed)
  id = string (Optional, Computed)
  not_before = string (Computed)
  resource_manager_id = string (Computed)
  resource_manager_versionless_id = string (Computed)
  secret_id = string (Computed)
  tags = ['map', 'string'] (Computed)
  thumbprint = string (Computed)
  version = string (Optional, Computed)
  versionless_id = string (Computed)
  versionless_secret_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
