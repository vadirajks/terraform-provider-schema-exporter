data "azurerm_oracle_exascale_database_storage_vault" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  additional_flash_cache_percentage = number (Computed)
  description = string (Computed)
  display_name = string (Computed)
  high_capacity_database_storage = ['list', ['object', {'available_size_in_gb': 'number', 'total_size_in_gb': 'number'}]] (Computed)
  id = string (Optional, Computed)
  lifecycle_details = string (Computed)
  lifecycle_state = string (Computed)
  location = string (Computed)
  oci_url = string (Computed)
  ocid = string (Computed)
  time_zone = string (Computed)
  virtual_machine_cluster_count = number (Computed)
  zones = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
