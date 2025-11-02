resource "azurerm_function_app_connection" "name" {
  function_app_id = string (Required)
  name = string (Required)
  target_resource_id = string (Required)
  client_type = string (Optional)
  id = string (Optional, Computed)
  vnet_solution = string (Optional)

  authentication block "list" (Required) {
    type = string (Required)
    certificate = string (Optional)
    client_id = string (Optional)
    name = string (Optional)
    principal_id = string (Optional)
    secret = string (Optional)
    subscription_id = string (Optional)
  }

  secret_store block "list" (Optional) {
    key_vault_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
