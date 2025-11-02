resource "azurerm_iothub_dps" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  allocation_policy = string (Optional)
  data_residency_enabled = bool (Optional)
  device_provisioning_host_name = string (Computed)
  id = string (Optional, Computed)
  id_scope = string (Computed)
  public_network_access_enabled = bool (Optional)
  service_operations_host_name = string (Computed)
  tags = ['map', 'string'] (Optional)

  ip_filter_rule block "list" (Optional) {
    action = string (Required)
    ip_mask = string (Required)
    name = string (Required)
    target = string (Optional)
  }

  linked_hub block "list" (Optional) {
    connection_string = string (Required)
    location = string (Required)
    allocation_weight = number (Optional)
    apply_allocation_policy = bool (Optional)
    hostname = string (Computed)
  }

  sku block "list" (Required) {
    capacity = number (Required)
    name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
