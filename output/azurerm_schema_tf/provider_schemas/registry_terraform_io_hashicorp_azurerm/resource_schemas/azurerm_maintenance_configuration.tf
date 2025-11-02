resource "azurerm_maintenance_configuration" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  scope = string (Required)
  id = string (Optional, Computed)
  in_guest_user_patch_mode = string (Optional)
  properties = ['map', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  visibility = string (Optional)

  install_patches block "list" (Optional) {
    reboot = string (Optional)

    linux block "list" (Optional) {
      classifications_to_include = ['list', 'string'] (Optional)
      package_names_mask_to_exclude = ['list', 'string'] (Optional)
      package_names_mask_to_include = ['list', 'string'] (Optional)
    }

    windows block "list" (Optional) {
      classifications_to_include = ['list', 'string'] (Optional)
      kb_numbers_to_exclude = ['list', 'string'] (Optional)
      kb_numbers_to_include = ['list', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  window block "list" (Optional) {
    start_date_time = string (Required)
    time_zone = string (Required)
    duration = string (Optional)
    expiration_date_time = string (Optional)
    recur_every = string (Optional)
  }
}
