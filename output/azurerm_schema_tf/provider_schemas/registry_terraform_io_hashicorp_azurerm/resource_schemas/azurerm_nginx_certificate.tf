resource "azurerm_nginx_certificate" "name" {
  certificate_virtual_path = string (Required)
  key_vault_secret_id = string (Required)
  key_virtual_path = string (Required)
  name = string (Required)
  nginx_deployment_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
