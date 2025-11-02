resource "azurerm_container_registry_credential_set" "name" {
  container_registry_id = string (Required)
  login_server = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  authentication_credentials block "list" (Required) {
    password_secret_id = string (Required)
    username_secret_id = string (Required)
  }

  identity block "list" (Required) {
    type = string (Required)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
