resource "azurerm_container_registry_token_password" "name" {
  container_registry_token_id = string (Required)
  id = string (Optional, Computed)

  password1 block "list" (Required) {
    expiry = string (Optional)
    value = string (Computed)
  }

  password2 block "list" (Optional) {
    expiry = string (Optional)
    value = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
