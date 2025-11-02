data "azurerm_netapp_volume_group_sap_hana" "name" {
  account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  application_identifier = string (Computed)
  group_description = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  volume = ['list', ['object', {'capacity_pool_id': 'string', 'data_protection_replication': ['list', ['object', {'endpoint_type': 'string', 'remote_volume_location': 'string', 'remote_volume_resource_id': 'string', 'replication_frequency': 'string'}]], 'data_protection_snapshot_policy': ['list', ['object', {'snapshot_policy_id': 'string'}]], 'export_policy_rule': ['list', ['object', {'allowed_clients': 'string', 'nfsv3_enabled': 'bool', 'nfsv41_enabled': 'bool', 'root_access_enabled': 'bool', 'rule_index': 'number', 'unix_read_only': 'bool', 'unix_read_write': 'bool'}]], 'id': 'string', 'mount_ip_addresses': ['list', 'string'], 'name': 'string', 'protocols': ['list', 'string'], 'proximity_placement_group_id': 'string', 'security_style': 'string', 'service_level': 'string', 'snapshot_directory_visible': 'bool', 'storage_quota_in_gb': 'number', 'subnet_id': 'string', 'tags': ['map', 'string'], 'throughput_in_mibps': 'number', 'volume_path': 'string', 'volume_spec_name': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
