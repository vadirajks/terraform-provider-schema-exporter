resource "azurerm_managed_disk" "name" {
  create_option = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  storage_account_type = string (Required)
  disk_access_id = string (Optional)
  disk_encryption_set_id = string (Optional)
  disk_iops_read_only = number (Optional, Computed)
  disk_iops_read_write = number (Optional, Computed)
  disk_mbps_read_only = number (Optional, Computed)
  disk_mbps_read_write = number (Optional, Computed)
  disk_size_gb = number (Optional, Computed)
  edge_zone = string (Optional)
  gallery_image_reference_id = string (Optional)
  hyper_v_generation = string (Optional)
  id = string (Optional, Computed)
  image_reference_id = string (Optional)
  logical_sector_size = number (Optional, Computed)
  max_shares = number (Optional, Computed)
  network_access_policy = string (Optional)
  on_demand_bursting_enabled = bool (Optional)
  optimized_frequent_attach_enabled = bool (Optional)
  os_type = string (Optional)
  performance_plus_enabled = bool (Optional)
  public_network_access_enabled = bool (Optional)
  secure_vm_disk_encryption_set_id = string (Optional)
  security_type = string (Optional)
  source_resource_id = string (Optional)
  source_uri = string (Optional, Computed)
  storage_account_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  tier = string (Optional, Computed)
  trusted_launch_enabled = bool (Optional)
  upload_size_bytes = number (Optional)
  zone = string (Optional)

  encryption_settings block "list" (Optional) {

    disk_encryption_key block "list" (Required) {
      secret_url = string (Required)
      source_vault_id = string (Required)
    }

    key_encryption_key block "list" (Optional) {
      key_url = string (Required)
      source_vault_id = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
