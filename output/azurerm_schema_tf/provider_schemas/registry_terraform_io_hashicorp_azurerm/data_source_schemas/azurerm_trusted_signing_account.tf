data "azurerm_trusted_signing_account" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  account_uri = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  sku_name = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
