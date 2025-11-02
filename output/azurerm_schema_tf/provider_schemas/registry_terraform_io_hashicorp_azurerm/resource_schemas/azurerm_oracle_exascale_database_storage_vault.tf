resource "azurerm_oracle_exascale_database_storage_vault" "name" {
  additional_flash_cache_percentage = number (Required)
  display_name = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  zones = ['set', 'string'] (Required)
  description = string (Optional, Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  time_zone = string (Optional)

  high_capacity_database_storage block "list" (Required) {
    total_size_in_gb = number (Required)
    available_size_in_gb = number (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
