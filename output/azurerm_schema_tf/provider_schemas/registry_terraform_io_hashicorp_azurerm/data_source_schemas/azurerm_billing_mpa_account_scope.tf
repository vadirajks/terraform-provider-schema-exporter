data "azurerm_billing_mpa_account_scope" "name" {
  billing_account_name = string (Required)
  customer_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
