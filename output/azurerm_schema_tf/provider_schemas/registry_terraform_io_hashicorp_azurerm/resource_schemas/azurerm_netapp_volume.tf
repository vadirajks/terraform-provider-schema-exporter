resource "azurerm_netapp_volume" "name" {
  account_name = string (Required)
  location = string (Required)
  name = string (Required)
  pool_name = string (Required)
  resource_group_name = string (Required)
  service_level = string (Required)
  storage_quota_in_gb = number (Required)
  subnet_id = string (Required)
  volume_path = string (Required)
  accept_grow_capacity_pool_for_short_term_clone_split = string (Optional)
  azure_vmware_data_store_enabled = bool (Optional)
  create_from_snapshot_resource_id = string (Optional)
  encryption_key_source = string (Optional, Computed)
  id = string (Optional, Computed)
  kerberos_enabled = bool (Optional)
  key_vault_private_endpoint_id = string (Optional, Computed)
  large_volume_enabled = bool (Optional)
  mount_ip_addresses = ['list', 'string'] (Computed)
  network_features = string (Optional, Computed)
  protocols = ['set', 'string'] (Optional, Computed)
  security_style = string (Optional, Computed)
  smb3_protocol_encryption_enabled = bool (Optional)
  smb_access_based_enumeration_enabled = bool (Optional)
  smb_continuous_availability_enabled = bool (Optional)
  smb_non_browsable_enabled = bool (Optional)
  snapshot_directory_visible = bool (Optional)
  tags = ['map', 'string'] (Optional)
  throughput_in_mibps = number (Optional, Computed)
  zone = string (Optional)

  cool_access block "list" (Optional) {
    coolness_period_in_days = number (Required)
    retrieval_policy = string (Required)
    tiering_policy = string (Required)
  }

  data_protection_backup_policy block "list" (Optional) {
    backup_policy_id = string (Required)
    backup_vault_id = string (Required)
    policy_enabled = bool (Optional)
  }

  data_protection_replication block "list" (Optional) {
    remote_volume_location = string (Required)
    remote_volume_resource_id = string (Required)
    replication_frequency = string (Required)
    endpoint_type = string (Optional)
  }

  data_protection_snapshot_policy block "list" (Optional) {
    snapshot_policy_id = string (Required)
  }

  export_policy_rule block "list" (Optional) {
    allowed_clients = ['set', 'string'] (Required)
    rule_index = number (Required)
    kerberos_5_read_only_enabled = bool (Optional)
    kerberos_5_read_write_enabled = bool (Optional)
    kerberos_5i_read_only_enabled = bool (Optional)
    kerberos_5i_read_write_enabled = bool (Optional)
    kerberos_5p_read_only_enabled = bool (Optional)
    kerberos_5p_read_write_enabled = bool (Optional)
    protocol = ['list', 'string'] (Optional, Computed)
    protocols_enabled = ['list', 'string'] (Optional, Computed)
    root_access_enabled = bool (Optional)
    unix_read_only = bool (Optional)
    unix_read_write = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
