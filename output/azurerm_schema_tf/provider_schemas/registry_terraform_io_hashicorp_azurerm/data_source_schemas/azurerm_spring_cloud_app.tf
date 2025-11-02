data "azurerm_spring_cloud_app" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  service_name = string (Required)
  fqdn = string (Computed)
  https_only = bool (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  is_public = bool (Computed)
  persistent_disk = ['list', ['object', {'mount_path': 'string', 'size_in_gb': 'number'}]] (Computed)
  tls_enabled = bool (Computed)
  url = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
