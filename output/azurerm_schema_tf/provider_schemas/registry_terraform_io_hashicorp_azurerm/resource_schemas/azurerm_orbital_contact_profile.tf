resource "azurerm_orbital_contact_profile" "name" {
  auto_tracking = string (Required)
  location = string (Required)
  minimum_variable_contact_duration = string (Required)
  name = string (Required)
  network_configuration_subnet_id = string (Required)
  resource_group_name = string (Required)
  event_hub_uri = string (Optional)
  id = string (Optional, Computed)
  minimum_elevation_degrees = number (Optional)
  tags = ['map', 'string'] (Optional)

  links block "list" (Required) {
    direction = string (Required)
    name = string (Required)
    polarization = string (Required)

    channels block "list" (Required) {
      bandwidth_mhz = number (Required)
      center_frequency_mhz = number (Required)
      name = string (Required)
      demodulation_configuration = string (Optional)
      modulation_configuration = string (Optional)

      end_point block "set" (Required) {
        end_point_name = string (Required)
        port = string (Required)
        protocol = string (Required)
        ip_address = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
