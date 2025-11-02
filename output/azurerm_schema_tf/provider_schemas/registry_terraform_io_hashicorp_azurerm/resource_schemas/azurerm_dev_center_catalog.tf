resource "azurerm_dev_center_catalog" "name" {
  dev_center_id = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  catalog_adogit block "list" (Optional) {
    branch = string (Required)
    key_vault_key_url = string (Required)
    path = string (Required)
    uri = string (Required)
  }

  catalog_github block "list" (Optional) {
    branch = string (Required)
    key_vault_key_url = string (Required)
    path = string (Required)
    uri = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
