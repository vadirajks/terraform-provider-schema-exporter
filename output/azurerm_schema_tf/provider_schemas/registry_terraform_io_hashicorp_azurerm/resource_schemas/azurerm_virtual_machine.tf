resource "azurerm_virtual_machine" "name" {
  location = string (Required)
  name = string (Required)
  network_interface_ids = ['list', 'string'] (Required)
  resource_group_name = string (Required)
  vm_size = string (Required)
  availability_set_id = string (Optional, Computed)
  delete_data_disks_on_termination = bool (Optional)
  delete_os_disk_on_termination = bool (Optional)
  id = string (Optional, Computed)
  license_type = string (Optional, Computed)
  primary_network_interface_id = string (Optional)
  proximity_placement_group_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  zones = ['list', 'string'] (Optional)

  additional_capabilities block "list" (Optional) {
    ultra_ssd_enabled = bool (Required)
  }

  boot_diagnostics block "list" (Optional) {
    enabled = bool (Required)
    storage_uri = string (Required)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  os_profile block "set" (Optional) {
    admin_username = string (Required)
    computer_name = string (Required)
    admin_password = string (Optional)
    custom_data = string (Optional, Computed)
  }

  os_profile_linux_config block "set" (Optional) {
    disable_password_authentication = bool (Required)

    ssh_keys block "list" (Optional) {
      key_data = string (Required)
      path = string (Required)
    }
  }

  os_profile_secrets block "list" (Optional) {
    source_vault_id = string (Required)

    vault_certificates block "list" (Optional) {
      certificate_url = string (Required)
      certificate_store = string (Optional)
    }
  }

  os_profile_windows_config block "set" (Optional) {
    enable_automatic_upgrades = bool (Optional)
    provision_vm_agent = bool (Optional)
    timezone = string (Optional)

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

  plan block "list" (Optional) {
    name = string (Required)
    product = string (Required)
    publisher = string (Required)
  }

  storage_data_disk block "list" (Optional) {
    create_option = string (Required)
    lun = number (Required)
    name = string (Required)
    caching = string (Optional, Computed)
    disk_size_gb = number (Optional, Computed)
    managed_disk_id = string (Optional, Computed)
    managed_disk_type = string (Optional, Computed)
    vhd_uri = string (Optional)
    write_accelerator_enabled = bool (Optional)
  }

  storage_image_reference block "set" (Optional) {
    id = string (Optional)
    offer = string (Optional)
    publisher = string (Optional)
    sku = string (Optional)
    version = string (Optional, Computed)
  }

  storage_os_disk block "list" (Required) {
    create_option = string (Required)
    name = string (Required)
    caching = string (Optional, Computed)
    disk_size_gb = number (Optional, Computed)
    image_uri = string (Optional)
    managed_disk_id = string (Optional, Computed)
    managed_disk_type = string (Optional, Computed)
    os_type = string (Optional, Computed)
    vhd_uri = string (Optional)
    write_accelerator_enabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
