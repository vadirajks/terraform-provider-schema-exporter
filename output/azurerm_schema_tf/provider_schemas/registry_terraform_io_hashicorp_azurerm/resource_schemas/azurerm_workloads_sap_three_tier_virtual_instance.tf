resource "azurerm_workloads_sap_three_tier_virtual_instance" "name" {
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

  three_tier_configuration block "list" (Required) {
    app_resource_group_name = string (Required)
    high_availability_type = string (Optional)
    secondary_ip_enabled = bool (Optional)

    application_server_configuration block "list" (Required) {
      instance_count = number (Required)
      subnet_id = string (Required)

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
    }

    central_server_configuration block "list" (Required) {
      instance_count = number (Required)
      subnet_id = string (Required)

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
    }

    database_server_configuration block "list" (Required) {
      instance_count = number (Required)
      subnet_id = string (Required)
      database_type = string (Optional)

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
    }

    resource_names block "list" (Optional) {

      application_server block "list" (Optional) {
        availability_set_name = string (Optional)

        virtual_machine block "list" (Optional) {
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

      central_server block "list" (Optional) {
        availability_set_name = string (Optional)

        load_balancer block "list" (Optional) {
          backend_pool_names = ['list', 'string'] (Optional)
          frontend_ip_configuration_names = ['list', 'string'] (Optional)
          health_probe_names = ['list', 'string'] (Optional)
          name = string (Optional)
        }

        virtual_machine block "list" (Optional) {
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

      database_server block "list" (Optional) {
        availability_set_name = string (Optional)

        load_balancer block "list" (Optional) {
          backend_pool_names = ['list', 'string'] (Optional)
          frontend_ip_configuration_names = ['list', 'string'] (Optional)
          health_probe_names = ['list', 'string'] (Optional)
          name = string (Optional)
        }

        virtual_machine block "list" (Optional) {
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

      shared_storage block "list" (Optional) {
        account_name = string (Optional)
        private_endpoint_name = string (Optional)
      }
    }

    transport_create_and_mount block "list" (Optional) {
      resource_group_id = string (Optional)
      storage_account_name = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
