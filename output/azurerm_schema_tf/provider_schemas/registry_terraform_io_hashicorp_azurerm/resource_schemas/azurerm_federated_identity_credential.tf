resource "azurerm_federated_identity_credential" "name" {
  audience = ['list', 'string'] (Required)
  issuer = string (Required)
  name = string (Required)
  parent_id = string (Required)
  resource_group_name = string (Required)
  subject = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
