resource "azurerm_trusted_signing_account" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  account_uri = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
