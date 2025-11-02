data "azurerm_bastion_host" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  copy_paste_enabled = bool (Computed)
  dns_name = string (Computed)
  file_copy_enabled = bool (Computed)
  id = string (Optional, Computed)
  ip_configuration = ['list', ['object', {'name': 'string', 'public_ip_address_id': 'string', 'subnet_id': 'string'}]] (Computed)
  ip_connect_enabled = bool (Computed)
  location = string (Computed)
  scale_units = number (Computed)
  session_recording_enabled = bool (Computed)
  shareable_link_enabled = bool (Computed)
  sku = string (Computed)
  tags = ['map', 'string'] (Computed)
  tunneling_enabled = bool (Computed)
  zones = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
