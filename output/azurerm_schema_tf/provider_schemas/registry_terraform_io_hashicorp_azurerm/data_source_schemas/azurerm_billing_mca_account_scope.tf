data "azurerm_billing_mca_account_scope" "name" {
  billing_account_name = string (Required)
  billing_profile_name = string (Required)
  invoice_section_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
