resource "azurerm_linux_virtual_machine" "name" {
  location = string (Required)
  name = string (Required)
  network_interface_ids = ['list', 'string'] (Required)
  resource_group_name = string (Required)
  size = string (Required)
  admin_password = string (Optional)
  admin_username = string (Optional)
  allow_extension_operations = bool (Optional, Computed)
  availability_set_id = string (Optional)
  bypass_platform_safety_checks_on_user_schedule_enabled = bool (Optional)
  capacity_reservation_group_id = string (Optional)
  computer_name = string (Optional, Computed)
  custom_data = string (Optional)
  dedicated_host_group_id = string (Optional)
  dedicated_host_id = string (Optional)
  disable_password_authentication = bool (Optional, Computed)
  disk_controller_type = string (Optional, Computed)
  edge_zone = string (Optional)
  encryption_at_host_enabled = bool (Optional)
  eviction_policy = string (Optional)
  extensions_time_budget = string (Optional)
  id = string (Optional, Computed)
  license_type = string (Optional)
  max_bid_price = number (Optional)
  os_managed_disk_id = string (Optional, Computed)
  patch_assessment_mode = string (Optional, Computed)
  patch_mode = string (Optional, Computed)
  platform_fault_domain = number (Optional)
  priority = string (Optional)
  private_ip_address = string (Computed)
  private_ip_addresses = ['list', 'string'] (Computed)
  provision_vm_agent = bool (Optional, Computed)
  proximity_placement_group_id = string (Optional)
  public_ip_address = string (Computed)
  public_ip_addresses = ['list', 'string'] (Computed)
  reboot_setting = string (Optional)
  secure_boot_enabled = bool (Optional)
  source_image_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  user_data = string (Optional)
  virtual_machine_id = string (Computed)
  virtual_machine_scale_set_id = string (Optional)
  vm_agent_platform_updates_enabled = bool (Optional, Computed)
  vtpm_enabled = bool (Optional)
  zone = string (Optional)

  additional_capabilities block "list" (Optional) {
    hibernation_enabled = bool (Optional)
    ultra_ssd_enabled = bool (Optional)
  }

  admin_ssh_key block "set" (Optional) {
    public_key = string (Required)
    username = string (Required)
  }

  boot_diagnostics block "list" (Optional) {
    storage_account_uri = string (Optional)
  }

  gallery_application block "list" (Optional) {
    version_id = string (Required)
    automatic_upgrade_enabled = bool (Optional)
    configuration_blob_uri = string (Optional)
    order = number (Optional)
    tag = string (Optional)
    treat_failure_as_deployment_failure_enabled = bool (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  os_disk block "list" (Required) {
    caching = string (Required)
    disk_encryption_set_id = string (Optional)
    disk_size_gb = number (Optional, Computed)
    id = string (Computed)
    name = string (Optional, Computed)
    secure_vm_disk_encryption_set_id = string (Optional)
    security_encryption_type = string (Optional)
    storage_account_type = string (Optional, Computed)
    write_accelerator_enabled = bool (Optional)

    diff_disk_settings block "list" (Optional) {
      option = string (Required)
      placement = string (Optional)
    }
  }

  os_image_notification block "list" (Optional) {
    timeout = string (Optional)
  }

  plan block "list" (Optional) {
    name = string (Required)
    product = string (Required)
    publisher = string (Required)
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
