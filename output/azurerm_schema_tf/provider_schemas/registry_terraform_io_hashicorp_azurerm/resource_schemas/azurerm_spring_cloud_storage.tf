resource "azurerm_spring_cloud_storage" "name" {
  name = string (Required)
  spring_cloud_service_id = string (Required)
  storage_account_key = string (Required)
  storage_account_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
