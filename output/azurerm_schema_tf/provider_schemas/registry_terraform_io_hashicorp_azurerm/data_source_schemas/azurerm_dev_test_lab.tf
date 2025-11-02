data "azurerm_dev_test_lab" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  artifacts_storage_account_id = string (Computed)
  default_premium_storage_account_id = string (Computed)
  default_storage_account_id = string (Computed)
  id = string (Optional, Computed)
  key_vault_id = string (Computed)
  location = string (Computed)
  premium_data_disk_storage_account_id = string (Computed)
  storage_type = string (Computed)
  tags = ['map', 'string'] (Computed)
  unique_identifier = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
