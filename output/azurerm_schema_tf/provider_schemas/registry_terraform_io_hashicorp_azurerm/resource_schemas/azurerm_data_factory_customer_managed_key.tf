resource "azurerm_data_factory_customer_managed_key" "name" {
  customer_managed_key_id = string (Required)
  data_factory_id = string (Required)
  id = string (Optional, Computed)
  user_assigned_identity_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
