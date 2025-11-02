data "azurerm_billing_enrollment_account_scope" "name" {
  billing_account_name = string (Required)
  enrollment_account_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
