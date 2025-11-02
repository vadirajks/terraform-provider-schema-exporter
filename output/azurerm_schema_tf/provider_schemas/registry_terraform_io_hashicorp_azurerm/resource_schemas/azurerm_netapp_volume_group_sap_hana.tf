resource "azurerm_netapp_volume_group_sap_hana" "name" {
  account_name = string (Required)
  application_identifier = string (Required)
  group_description = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  volume block "list" (Required) {
    capacity_pool_id = string (Required)
    name = string (Required)
    protocols = ['list', 'string'] (Required)
    security_style = string (Required)
    service_level = string (Required)
    snapshot_directory_visible = bool (Required)
    storage_quota_in_gb = number (Required)
    subnet_id = string (Required)
    throughput_in_mibps = number (Required)
    volume_path = string (Required)
    volume_spec_name = string (Required)
    id = string (Computed)
    mount_ip_addresses = ['list', 'string'] (Computed)
    proximity_placement_group_id = string (Optional)
    tags = ['map', 'string'] (Optional)

    data_protection_replication block "list" (Optional) {
      remote_volume_location = string (Required)
      remote_volume_resource_id = string (Required)
      replication_frequency = string (Required)
      endpoint_type = string (Optional)
    }

    data_protection_snapshot_policy block "list" (Optional) {
      snapshot_policy_id = string (Required)
    }

    export_policy_rule block "list" (Required) {
      allowed_clients = string (Required)
      nfsv3_enabled = bool (Required)
      nfsv41_enabled = bool (Required)
      rule_index = number (Required)
      root_access_enabled = bool (Optional)
      unix_read_only = bool (Optional)
      unix_read_write = bool (Optional)
    }
  }
}
