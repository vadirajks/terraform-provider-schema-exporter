data "azurerm_digital_twins_instance" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  host_name = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
