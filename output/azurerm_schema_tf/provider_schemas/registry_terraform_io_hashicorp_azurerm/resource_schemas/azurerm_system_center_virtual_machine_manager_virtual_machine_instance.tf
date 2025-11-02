resource "azurerm_system_center_virtual_machine_manager_virtual_machine_instance" "name" {
  custom_location_id = string (Required)
  scoped_resource_id = string (Required)
  id = string (Optional, Computed)
  system_center_virtual_machine_manager_availability_set_ids = ['list', 'string'] (Optional)

  hardware block "list" (Optional) {
    cpu_count = number (Optional)
    dynamic_memory_max_in_mb = number (Optional)
    dynamic_memory_min_in_mb = number (Optional)
    limit_cpu_for_migration_enabled = bool (Optional)
    memory_in_mb = number (Optional)
  }

  infrastructure block "list" (Required) {
    checkpoint_type = string (Optional)
    system_center_virtual_machine_manager_cloud_id = string (Optional)
    system_center_virtual_machine_manager_inventory_item_id = string (Optional)
    system_center_virtual_machine_manager_template_id = string (Optional)
    system_center_virtual_machine_manager_virtual_machine_server_id = string (Optional)
  }

  network_interface block "list" (Optional) {
    name = string (Required)
    ipv4_address_type = string (Optional)
    ipv6_address_type = string (Optional)
    mac_address_type = string (Optional)
    virtual_network_id = string (Optional)
  }

  operating_system block "list" (Optional) {
    admin_password = string (Optional)
    computer_name = string (Optional)
  }

  storage_disk block "list" (Optional) {
    bus = number (Optional)
    bus_type = string (Optional)
    disk_size_gb = number (Optional)
    lun = number (Optional)
    name = string (Optional)
    storage_qos_policy_name = string (Optional)
    template_disk_id = string (Optional)
    vhd_type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
