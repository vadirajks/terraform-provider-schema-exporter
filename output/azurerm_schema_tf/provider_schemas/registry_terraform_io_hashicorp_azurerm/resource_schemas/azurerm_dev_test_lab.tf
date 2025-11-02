resource "azurerm_dev_test_lab" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  artifacts_storage_account_id = string (Computed)
  default_premium_storage_account_id = string (Computed)
  default_storage_account_id = string (Computed)
  id = string (Optional, Computed)
  key_vault_id = string (Computed)
  premium_data_disk_storage_account_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  unique_identifier = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
