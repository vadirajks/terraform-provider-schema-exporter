data "azurerm_maintenance_configuration" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  in_guest_user_patch_mode = string (Computed)
  install_patches = ['list', ['object', {'linux': ['list', ['object', {'classifications_to_include': ['list', 'string'], 'package_names_mask_to_exclude': ['list', 'string'], 'package_names_mask_to_include': ['list', 'string']}]], 'reboot': 'string', 'windows': ['list', ['object', {'classifications_to_include': ['list', 'string'], 'kb_numbers_to_exclude': ['list', 'string'], 'kb_numbers_to_include': ['list', 'string']}]]}]] (Computed)
  location = string (Computed)
  properties = ['map', 'string'] (Computed)
  scope = string (Computed)
  tags = ['map', 'string'] (Computed)
  visibility = string (Computed)
  window = ['list', ['object', {'duration': 'string', 'expiration_date_time': 'string', 'recur_every': 'string', 'start_date_time': 'string', 'time_zone': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
