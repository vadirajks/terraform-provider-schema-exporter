resource "azurerm_orbital_contact" "name" {
  contact_profile_id = string (Required)
  ground_station_name = string (Required)
  name = string (Required)
  reservation_end_time = string (Required)
  reservation_start_time = string (Required)
  spacecraft_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
