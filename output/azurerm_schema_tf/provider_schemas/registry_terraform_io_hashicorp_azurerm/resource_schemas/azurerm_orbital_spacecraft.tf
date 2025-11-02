resource "azurerm_orbital_spacecraft" "name" {
  location = string (Required)
  name = string (Required)
  norad_id = string (Required)
  resource_group_name = string (Required)
  title_line = string (Required)
  two_line_elements = ['list', 'string'] (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  links block "list" (Required) {
    bandwidth_mhz = number (Required)
    center_frequency_mhz = number (Required)
    direction = string (Required)
    name = string (Required)
    polarization = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
