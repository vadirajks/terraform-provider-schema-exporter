resource "azurerm_stack_hci_deployment_setting" "name" {
  arc_resource_ids = ['list', 'string'] (Required)
  stack_hci_cluster_id = string (Required)
  version = string (Required)
  id = string (Optional, Computed)

  scale_unit block "list" (Required) {
    active_directory_organizational_unit_path = string (Required)
    domain_fqdn = string (Required)
    name_prefix = string (Required)
    secrets_location = string (Required)
    bitlocker_boot_volume_enabled = bool (Optional)
    bitlocker_data_volume_enabled = bool (Optional)
    credential_guard_enabled = bool (Optional)
    drift_control_enabled = bool (Optional)
    drtm_protection_enabled = bool (Optional)
    episodic_data_upload_enabled = bool (Optional)
    eu_location_enabled = bool (Optional)
    hvci_protection_enabled = bool (Optional)
    side_channel_mitigation_enabled = bool (Optional)
    smb_cluster_encryption_enabled = bool (Optional)
    smb_signing_enabled = bool (Optional)
    streaming_data_client_enabled = bool (Optional)
    wdac_enabled = bool (Optional)

    cluster block "list" (Required) {
      azure_service_endpoint = string (Required)
      cloud_account_name = string (Required)
      name = string (Required)
      witness_path = string (Required)
      witness_type = string (Required)
    }

    host_network block "list" (Required) {
      storage_auto_ip_enabled = bool (Optional)
      storage_connectivity_switchless_enabled = bool (Optional)

      intent block "list" (Required) {
        adapter = ['list', 'string'] (Required)
        name = string (Required)
        traffic_type = ['list', 'string'] (Required)
        adapter_property_override_enabled = bool (Optional)
        qos_policy_override_enabled = bool (Optional)
        virtual_switch_configuration_override_enabled = bool (Optional)

        adapter_property_override block "list" (Optional) {
          jumbo_packet = string (Optional)
          network_direct = string (Optional)
          network_direct_technology = string (Optional)
        }

        qos_policy_override block "list" (Optional) {
          bandwidth_percentage_smb = string (Optional)
          priority_value8021_action_cluster = string (Optional)
          priority_value8021_action_smb = string (Optional)
        }

        virtual_switch_configuration_override block "list" (Optional) {
          enable_iov = string (Optional)
          load_balancing_algorithm = string (Optional)
        }
      }

      storage_network block "list" (Required) {
        name = string (Required)
        network_adapter_name = string (Required)
        vlan_id = string (Required)
      }
    }

    infrastructure_network block "list" (Required) {
      dns_server = ['list', 'string'] (Required)
      gateway = string (Required)
      subnet_mask = string (Required)
      dhcp_enabled = bool (Optional)

      ip_pool block "list" (Required) {
        ending_address = string (Required)
        starting_address = string (Required)
      }
    }

    optional_service block "list" (Required) {
      custom_location = string (Required)
    }

    physical_node block "list" (Required) {
      ipv4_address = string (Required)
      name = string (Required)
    }

    storage block "list" (Required) {
      configuration_mode = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
