resource "azurerm_virtual_machine_scale_set_standby_pool" "name" {
  attached_virtual_machine_scale_set_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  virtual_machine_state = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  elasticity_profile block "list" (Required) {
    max_ready_capacity = number (Required)
    min_ready_capacity = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
