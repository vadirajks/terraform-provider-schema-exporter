resource "azurerm_orchestrated_virtual_machine_scale_set" "name" {
  location = string (Required)
  name = string (Required)
  platform_fault_domain_count = number (Required)
  resource_group_name = string (Required)
  capacity_reservation_group_id = string (Optional)
  encryption_at_host_enabled = bool (Optional)
  eviction_policy = string (Optional)
  extension_operations_enabled = bool (Optional)
  extensions_time_budget = string (Optional)
  id = string (Optional, Computed)
  instances = number (Optional, Computed)
  license_type = string (Optional)
  max_bid_price = number (Optional)
  network_api_version = string (Optional)
  priority = string (Optional)
  proximity_placement_group_id = string (Optional)
  single_placement_group = bool (Optional, Computed)
  sku_name = string (Optional)
  source_image_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  unique_id = string (Computed)
  upgrade_mode = string (Optional)
  user_data_base64 = string (Optional)
  zone_balance = bool (Optional)
  zones = ['set', 'string'] (Optional)

  additional_capabilities block "list" (Optional) {
    ultra_ssd_enabled = bool (Optional)
  }

  automatic_instance_repair block "list" (Optional) {
    enabled = bool (Required)
    action = string (Optional, Computed)
    grace_period = string (Optional, Computed)
  }

  boot_diagnostics block "list" (Optional) {
    storage_account_uri = string (Optional)
  }

  data_disk block "list" (Optional) {
    caching = string (Required)
    storage_account_type = string (Required)
    create_option = string (Optional)
    disk_encryption_set_id = string (Optional)
    disk_size_gb = number (Optional, Computed)
    lun = number (Optional, Computed)
    ultra_ssd_disk_iops_read_write = number (Optional, Computed)
    ultra_ssd_disk_mbps_read_write = number (Optional, Computed)
    write_accelerator_enabled = bool (Optional)
  }

  extension block "set" (Optional) {
    name = string (Required)
    publisher = string (Required)
    type = string (Required)
    type_handler_version = string (Required)
    auto_upgrade_minor_version_enabled = bool (Optional)
    extensions_to_provision_after_vm_creation = ['list', 'string'] (Optional)
    failure_suppression_enabled = bool (Optional)
    force_extension_execution_on_change = string (Optional)
    protected_settings = string (Optional)
    settings = string (Optional)

    protected_settings_from_key_vault block "list" (Optional) {
      secret_url = string (Required)
      source_vault_id = string (Required)
    }
  }

  identity block "list" (Optional) {
    identity_ids = ['set', 'string'] (Required)
    type = string (Required)
  }

  network_interface block "list" (Optional) {
    name = string (Required)
    auxiliary_mode = string (Optional)
    auxiliary_sku = string (Optional)
    dns_servers = ['list', 'string'] (Optional)
    enable_accelerated_networking = bool (Optional)
    enable_ip_forwarding = bool (Optional)
    network_security_group_id = string (Optional)
    primary = bool (Optional)

    ip_configuration block "list" (Required) {
      name = string (Required)
      application_gateway_backend_address_pool_ids = ['set', 'string'] (Optional)
      application_security_group_ids = ['set', 'string'] (Optional)
      load_balancer_backend_address_pool_ids = ['set', 'string'] (Optional)
      primary = bool (Optional)
      subnet_id = string (Optional)
      version = string (Optional)

      public_ip_address block "list" (Optional) {
        name = string (Required)
        domain_name_label = string (Optional)
        idle_timeout_in_minutes = number (Optional, Computed)
        public_ip_prefix_id = string (Optional)
        sku_name = string (Optional)
        version = string (Optional)

        ip_tag block "list" (Optional) {
          tag = string (Required)
          type = string (Required)
        }
      }
    }
  }

  os_disk block "list" (Optional) {
    caching = string (Required)
    storage_account_type = string (Required)
    disk_encryption_set_id = string (Optional)
    disk_size_gb = number (Optional, Computed)
    write_accelerator_enabled = bool (Optional)

    diff_disk_settings block "list" (Optional) {
      option = string (Required)
      placement = string (Optional)
    }
  }

  os_profile block "list" (Optional) {
    custom_data = string (Optional)

    linux_configuration block "list" (Optional) {
      admin_username = string (Required)
      admin_password = string (Optional)
      computer_name_prefix = string (Optional, Computed)
      disable_password_authentication = bool (Optional)
      patch_assessment_mode = string (Optional)
      patch_mode = string (Optional)
      provision_vm_agent = bool (Optional)

      admin_ssh_key block "set" (Optional) {
        public_key = string (Required)
        username = string (Required)
      }

      secret block "list" (Optional) {
        key_vault_id = string (Required)

        certificate block "set" (Required) {
          url = string (Required)
        }
      }
    }

    windows_configuration block "list" (Optional) {
      admin_password = string (Required)
      admin_username = string (Required)
      computer_name_prefix = string (Optional, Computed)
      enable_automatic_updates = bool (Optional)
      hotpatching_enabled = bool (Optional)
      patch_assessment_mode = string (Optional)
      patch_mode = string (Optional)
      provision_vm_agent = bool (Optional)
      timezone = string (Optional)

      additional_unattend_content block "list" (Optional) {
        content = string (Required)
        setting = string (Required)
      }

      secret block "list" (Optional) {
        key_vault_id = string (Required)

        certificate block "set" (Required) {
          store = string (Required)
          url = string (Required)
        }
      }

      winrm_listener block "set" (Optional) {
        protocol = string (Required)
        certificate_url = string (Optional)
      }
    }
  }

  plan block "list" (Optional) {
    name = string (Required)
    product = string (Required)
    publisher = string (Required)
  }

  priority_mix block "list" (Optional) {
    base_regular_count = number (Optional)
    regular_percentage_above_base = number (Optional)
  }

  rolling_upgrade_policy block "list" (Optional) {
    max_batch_instance_percent = number (Required)
    max_unhealthy_instance_percent = number (Required)
    max_unhealthy_upgraded_instance_percent = number (Required)
    pause_time_between_batches = string (Required)
    cross_zone_upgrades_enabled = bool (Optional)
    maximum_surge_instances_enabled = bool (Optional)
    prioritize_unhealthy_instances_enabled = bool (Optional)
  }

  sku_profile block "list" (Optional) {
    allocation_strategy = string (Required)
    vm_sizes = ['set', 'string'] (Required)
  }

  source_image_reference block "list" (Optional) {
    offer = string (Required)
    publisher = string (Required)
    sku = string (Required)
    version = string (Required)
  }

  termination_notification block "list" (Optional) {
    enabled = bool (Required)
    timeout = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
