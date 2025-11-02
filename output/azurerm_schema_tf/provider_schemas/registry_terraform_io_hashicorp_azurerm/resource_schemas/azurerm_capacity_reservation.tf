resource "azurerm_capacity_reservation" "name" {
  capacity_reservation_group_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  zone = string (Optional)

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
