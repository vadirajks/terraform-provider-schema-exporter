resource "azurerm_linux_virtual_machine_scale_set" "name" {
  admin_username = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  admin_password = string (Optional)
  capacity_reservation_group_id = string (Optional)
  computer_name_prefix = string (Optional, Computed)
  custom_data = string (Optional)
  disable_password_authentication = bool (Optional)
  do_not_run_extensions_on_overprovisioned_machines = bool (Optional)
  edge_zone = string (Optional)
  encryption_at_host_enabled = bool (Optional)
  eviction_policy = string (Optional)
  extension_operations_enabled = bool (Optional)
  extensions_time_budget = string (Optional)
  health_probe_id = string (Optional)
  host_group_id = string (Optional)
  id = string (Optional, Computed)
  instances = number (Optional)
  max_bid_price = number (Optional)
  overprovision = bool (Optional)
  platform_fault_domain_count = number (Optional, Computed)
  priority = string (Optional)
  provision_vm_agent = bool (Optional)
  proximity_placement_group_id = string (Optional)
  resilient_vm_creation_enabled = bool (Optional)
  resilient_vm_deletion_enabled = bool (Optional)
  secure_boot_enabled = bool (Optional)
  single_placement_group = bool (Optional)
  source_image_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  unique_id = string (Computed)
  upgrade_mode = string (Optional)
  user_data = string (Optional)
  vtpm_enabled = bool (Optional)
  zone_balance = bool (Optional)
  zones = ['set', 'string'] (Optional)

  additional_capabilities block "list" (Optional) {
    ultra_ssd_enabled = bool (Optional)
  }

  admin_ssh_key block "set" (Optional) {
    public_key = string (Required)
    username = string (Required)
  }

  automatic_instance_repair block "list" (Optional) {
    enabled = bool (Required)
    action = string (Optional, Computed)
    grace_period = string (Optional, Computed)
  }

  automatic_os_upgrade_policy block "list" (Optional) {
    disable_automatic_rollback = bool (Required)
    enable_automatic_os_upgrade = bool (Required)
  }

  boot_diagnostics block "list" (Optional) {
    storage_account_uri = string (Optional)
  }

  data_disk block "list" (Optional) {
    caching = string (Required)
    disk_size_gb = number (Required)
    lun = number (Required)
    storage_account_type = string (Required)
    create_option = string (Optional)
    disk_encryption_set_id = string (Optional)
    name = string (Optional)
    ultra_ssd_disk_iops_read_write = number (Optional, Computed)
    ultra_ssd_disk_mbps_read_write = number (Optional, Computed)
    write_accelerator_enabled = bool (Optional)
  }

  extension block "set" (Optional) {
    name = string (Required)
    publisher = string (Required)
    type = string (Required)
    type_handler_version = string (Required)
    auto_upgrade_minor_version = bool (Optional)
    automatic_upgrade_enabled = bool (Optional)
    force_update_tag = string (Optional)
    protected_settings = string (Optional)
    provision_after_extensions = ['list', 'string'] (Optional)
    settings = string (Optional)

    protected_settings_from_key_vault block "list" (Optional) {
      secret_url = string (Required)
      source_vault_id = string (Required)
    }
  }

  gallery_application block "list" (Optional) {
    version_id = string (Required)
    configuration_blob_uri = string (Optional)
    order = number (Optional)
    tag = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  network_interface block "list" (Required) {
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
      load_balancer_inbound_nat_rules_ids = ['set', 'string'] (Optional)
      primary = bool (Optional)
      subnet_id = string (Optional)
      version = string (Optional)

      public_ip_address block "list" (Optional) {
        name = string (Required)
        domain_name_label = string (Optional)
        idle_timeout_in_minutes = number (Optional, Computed)
        public_ip_prefix_id = string (Optional)
        version = string (Optional)

        ip_tag block "list" (Optional) {
          tag = string (Required)
          type = string (Required)
        }
      }
    }
  }

  os_disk block "list" (Required) {
    caching = string (Required)
    storage_account_type = string (Required)
    disk_encryption_set_id = string (Optional)
    disk_size_gb = number (Optional, Computed)
    secure_vm_disk_encryption_set_id = string (Optional)
    security_encryption_type = string (Optional)
    write_accelerator_enabled = bool (Optional)

    diff_disk_settings block "list" (Optional) {
      option = string (Required)
      placement = string (Optional)
    }
  }

  plan block "list" (Optional) {
    name = string (Required)
    product = string (Required)
    publisher = string (Required)
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

  scale_in block "list" (Optional) {
    force_deletion_enabled = bool (Optional)
    rule = string (Optional)
  }

  secret block "list" (Optional) {
    key_vault_id = string (Required)

    certificate block "set" (Required) {
      url = string (Required)
    }
  }

  source_image_reference block "list" (Optional) {
    offer = string (Required)
    publisher = string (Required)
    sku = string (Required)
    version = string (Required)
  }

  spot_restore block "list" (Optional) {
    enabled = bool (Optional)
    timeout = string (Optional)
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
