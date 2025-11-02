resource "azurerm_virtual_machine_scale_set" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  upgrade_policy_mode = string (Required)
  automatic_os_upgrade = bool (Optional)
  eviction_policy = string (Optional)
  health_probe_id = string (Optional)
  id = string (Optional, Computed)
  license_type = string (Optional, Computed)
  overprovision = bool (Optional)
  priority = string (Optional)
  proximity_placement_group_id = string (Optional)
  single_placement_group = bool (Optional)
  tags = ['map', 'string'] (Optional)
  zones = ['list', 'string'] (Optional)

  boot_diagnostics block "list" (Optional) {
    storage_uri = string (Required)
    enabled = bool (Optional)
  }

  extension block "set" (Optional) {
    name = string (Required)
    publisher = string (Required)
    type = string (Required)
    type_handler_version = string (Required)
    auto_upgrade_minor_version = bool (Optional)
    protected_settings = string (Optional)
    provision_after_extensions = ['set', 'string'] (Optional)
    settings = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  network_profile block "set" (Required) {
    name = string (Required)
    primary = bool (Required)
    accelerated_networking = bool (Optional)
    ip_forwarding = bool (Optional)
    network_security_group_id = string (Optional)

    dns_settings block "list" (Optional) {
      dns_servers = ['list', 'string'] (Required)
    }

    ip_configuration block "list" (Required) {
      name = string (Required)
      primary = bool (Required)
      subnet_id = string (Required)
      application_gateway_backend_address_pool_ids = ['set', 'string'] (Optional)
      application_security_group_ids = ['set', 'string'] (Optional)
      load_balancer_backend_address_pool_ids = ['set', 'string'] (Optional)
      load_balancer_inbound_nat_rules_ids = ['set', 'string'] (Optional, Computed)

      public_ip_address_configuration block "list" (Optional) {
        domain_name_label = string (Required)
        idle_timeout = number (Required)
        name = string (Required)
      }
    }
  }

  os_profile block "list" (Required) {
    admin_username = string (Required)
    computer_name_prefix = string (Required)
    admin_password = string (Optional)
    custom_data = string (Optional)
  }

  os_profile_linux_config block "set" (Optional) {
    disable_password_authentication = bool (Optional)

    ssh_keys block "list" (Optional) {
      path = string (Required)
      key_data = string (Optional)
    }
  }

  os_profile_secrets block "set" (Optional) {
    source_vault_id = string (Required)

    vault_certificates block "list" (Optional) {
      certificate_url = string (Required)
      certificate_store = string (Optional)
    }
  }

  os_profile_windows_config block "set" (Optional) {
    enable_automatic_upgrades = bool (Optional)
    provision_vm_agent = bool (Optional)

    additional_unattend_config block "list" (Optional) {
      component = string (Required)
      content = string (Required)
      pass = string (Required)
      setting_name = string (Required)
    }

    winrm block "list" (Optional) {
      protocol = string (Required)
      certificate_url = string (Optional)
    }
  }

  plan block "set" (Optional) {
    name = string (Required)
    product = string (Required)
    publisher = string (Required)
  }

  rolling_upgrade_policy block "list" (Optional) {
    max_batch_instance_percent = number (Optional)
    max_unhealthy_instance_percent = number (Optional)
    max_unhealthy_upgraded_instance_percent = number (Optional)
    pause_time_between_batches = string (Optional)
  }

  sku block "list" (Required) {
    capacity = number (Required)
    name = string (Required)
    tier = string (Optional, Computed)
  }

  storage_profile_data_disk block "list" (Optional) {
    create_option = string (Required)
    lun = number (Required)
    caching = string (Optional, Computed)
    disk_size_gb = number (Optional, Computed)
    managed_disk_type = string (Optional, Computed)
  }

  storage_profile_image_reference block "set" (Optional) {
    id = string (Optional)
    offer = string (Optional)
    publisher = string (Optional)
    sku = string (Optional)
    version = string (Optional)
  }

  storage_profile_os_disk block "set" (Required) {
    create_option = string (Required)
    caching = string (Optional, Computed)
    image = string (Optional)
    managed_disk_type = string (Optional, Computed)
    name = string (Optional)
    os_type = string (Optional)
    vhd_containers = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
