resource "azurerm_workloads_sap_single_node_virtual_instance" "name" {
  app_location = string (Required)
  environment = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sap_fqdn = string (Required)
  sap_product = string (Required)
  id = string (Optional, Computed)
  managed_resource_group_name = string (Optional)
  managed_resources_network_access_type = string (Optional)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
    identity_ids = ['set', 'string'] (Required)
    type = string (Required)
  }

  single_server_configuration block "list" (Required) {
    app_resource_group_name = string (Required)
    subnet_id = string (Required)
    database_type = string (Optional)
    secondary_ip_enabled = bool (Optional)

    disk_volume_configuration block "set" (Optional) {
      number_of_disks = number (Required)
      size_in_gb = number (Required)
      sku_name = string (Required)
      volume_name = string (Required)
    }

    virtual_machine_configuration block "list" (Required) {
      virtual_machine_size = string (Required)

      image block "list" (Required) {
        offer = string (Required)
        publisher = string (Required)
        sku = string (Required)
        version = string (Required)
      }

      os_profile block "list" (Required) {
        admin_username = string (Required)
        ssh_private_key = string (Required)
        ssh_public_key = string (Required)
      }
    }

    virtual_machine_resource_names block "list" (Optional) {
      host_name = string (Optional)
      network_interface_names = ['list', 'string'] (Optional)
      os_disk_name = string (Optional)
      virtual_machine_name = string (Optional)

      data_disk block "set" (Optional) {
        names = ['list', 'string'] (Required)
        volume_name = string (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
