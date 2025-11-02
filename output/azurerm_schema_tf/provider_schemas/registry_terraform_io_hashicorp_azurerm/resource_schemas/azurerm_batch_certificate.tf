resource "azurerm_batch_certificate" "name" {
  account_name = string (Required)
  certificate = string (Required)
  format = string (Required)
  resource_group_name = string (Required)
  thumbprint = string (Required)
  thumbprint_algorithm = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  password = string (Optional)
  public_data = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
