resource "azurerm_spring_cloud_certificate" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  service_name = string (Required)
  certificate_content = string (Optional)
  exclude_private_key = bool (Optional)
  id = string (Optional, Computed)
  key_vault_certificate_id = string (Optional)
  thumbprint = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
