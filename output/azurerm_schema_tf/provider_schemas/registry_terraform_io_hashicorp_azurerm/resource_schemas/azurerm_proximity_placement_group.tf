resource "azurerm_proximity_placement_group" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  allowed_vm_sizes = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  zone = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
