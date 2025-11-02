data "azurerm_batch_certificate" "name" {
  account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  format = string (Computed)
  id = string (Optional, Computed)
  public_data = string (Computed)
  thumbprint = string (Computed)
  thumbprint_algorithm = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
