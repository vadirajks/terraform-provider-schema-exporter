data "azurerm_netapp_volume" "name" {
  account_name = string (Required)
  name = string (Required)
  pool_name = string (Required)
  resource_group_name = string (Required)
  accept_grow_capacity_pool_for_short_term_clone_split = string (Computed)
  data_protection_backup_policy = ['list', ['object', {'backup_policy_id': 'string', 'backup_vault_id': 'string', 'policy_enabled': 'bool'}]] (Computed)
  data_protection_replication = ['list', ['object', {'endpoint_type': 'string', 'remote_volume_location': 'string', 'remote_volume_resource_id': 'string', 'replication_frequency': 'string'}]] (Computed)
  encryption_key_source = string (Computed)
  id = string (Optional, Computed)
  key_vault_private_endpoint_id = string (Computed)
  large_volume_enabled = bool (Computed)
  location = string (Computed)
  mount_ip_addresses = ['list', 'string'] (Computed)
  network_features = string (Computed)
  protocols = ['list', 'string'] (Computed)
  security_style = string (Optional)
  service_level = string (Computed)
  smb_access_based_enumeration_enabled = bool (Computed)
  smb_non_browsable_enabled = bool (Computed)
  storage_quota_in_gb = number (Computed)
  subnet_id = string (Computed)
  volume_path = string (Computed)
  zone = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
