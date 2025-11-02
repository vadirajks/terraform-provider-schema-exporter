resource "azurerm_hdinsight_spark_cluster" "name" {
  cluster_version = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  tier = string (Required)
  encryption_in_transit_enabled = bool (Optional)
  https_endpoint = string (Computed)
  id = string (Optional, Computed)
  ssh_endpoint = string (Computed)
  tags = ['map', 'string'] (Optional)
  tls_min_version = string (Optional)
  zones = ['set', 'string'] (Optional)

  component_version block "list" (Required) {
    spark = string (Required)
  }

  compute_isolation block "list" (Optional) {
    compute_isolation_enabled = bool (Optional)
    host_sku = string (Optional)
  }

  disk_encryption block "list" (Optional) {
    encryption_algorithm = string (Optional)
    encryption_at_host_enabled = bool (Optional)
    key_vault_key_id = string (Optional)
    key_vault_managed_identity_id = string (Optional)
  }

  extension block "list" (Optional) {
    log_analytics_workspace_id = string (Required)
    primary_key = string (Required)
  }

  gateway block "list" (Required) {
    password = string (Required)
    username = string (Required)
  }

  metastores block "list" (Optional) {

    ambari block "list" (Optional) {
      database_name = string (Required)
      password = string (Required)
      server = string (Required)
      username = string (Required)
    }

    hive block "list" (Optional) {
      database_name = string (Required)
      password = string (Required)
      server = string (Required)
      username = string (Required)
    }

    oozie block "list" (Optional) {
      database_name = string (Required)
      password = string (Required)
      server = string (Required)
      username = string (Required)
    }
  }

  monitor block "list" (Optional) {
    log_analytics_workspace_id = string (Required)
    primary_key = string (Required)
  }

  network block "list" (Optional) {
    connection_direction = string (Optional)
    private_link_enabled = bool (Optional)
  }

  private_link_configuration block "list" (Optional) {
    group_id = string (Required)
    name = string (Required)

    ip_configuration block "list" (Required) {
      name = string (Required)
      primary = bool (Optional)
      private_ip_address = string (Optional)
      private_ip_allocation_method = string (Optional)
      subnet_id = string (Optional)
    }
  }

  roles block "list" (Required) {

    head_node block "list" (Required) {
      username = string (Required)
      vm_size = string (Required)
      password = string (Optional)
      ssh_keys = ['set', 'string'] (Optional)
      subnet_id = string (Optional)
      virtual_network_id = string (Optional)

      script_actions block "list" (Optional) {
        name = string (Required)
        uri = string (Required)
        parameters = string (Optional)
      }
    }

    worker_node block "list" (Required) {
      target_instance_count = number (Required)
      username = string (Required)
      vm_size = string (Required)
      password = string (Optional)
      ssh_keys = ['set', 'string'] (Optional)
      subnet_id = string (Optional)
      virtual_network_id = string (Optional)

      autoscale block "list" (Optional) {

        capacity block "list" (Optional) {
          max_instance_count = number (Required)
          min_instance_count = number (Required)
        }

        recurrence block "list" (Optional) {
          timezone = string (Required)

          schedule block "list" (Required) {
            days = ['list', 'string'] (Required)
            target_instance_count = number (Required)
            time = string (Required)
          }
        }
      }

      script_actions block "list" (Optional) {
        name = string (Required)
        uri = string (Required)
        parameters = string (Optional)
      }
    }

    zookeeper_node block "list" (Required) {
      username = string (Required)
      vm_size = string (Required)
      password = string (Optional)
      ssh_keys = ['set', 'string'] (Optional)
      subnet_id = string (Optional)
      virtual_network_id = string (Optional)

      script_actions block "list" (Optional) {
        name = string (Required)
        uri = string (Required)
        parameters = string (Optional)
      }
    }
  }

  security_profile block "list" (Optional) {
    aadds_resource_id = string (Required)
    domain_name = string (Required)
    domain_user_password = string (Required)
    domain_username = string (Required)
    ldaps_urls = ['set', 'string'] (Required)
    msi_resource_id = string (Required)
    cluster_users_group_dns = ['set', 'string'] (Optional)
  }

  storage_account block "list" (Optional) {
    is_default = bool (Required)
    storage_account_key = string (Required)
    storage_container_id = string (Required)
    storage_resource_id = string (Optional)
  }

  storage_account_gen2 block "list" (Optional) {
    filesystem_id = string (Required)
    is_default = bool (Required)
    managed_identity_resource_id = string (Required)
    storage_resource_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
