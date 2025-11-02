resource "azurerm_bastion_host" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  copy_paste_enabled = bool (Optional)
  dns_name = string (Computed)
  file_copy_enabled = bool (Optional)
  id = string (Optional, Computed)
  ip_connect_enabled = bool (Optional)
  kerberos_enabled = bool (Optional)
  scale_units = number (Optional)
  session_recording_enabled = bool (Optional)
  shareable_link_enabled = bool (Optional)
  sku = string (Optional)
  tags = ['map', 'string'] (Optional)
  tunneling_enabled = bool (Optional)
  virtual_network_id = string (Optional)
  zones = ['set', 'string'] (Optional)

  ip_configuration block "list" (Optional) {
    name = string (Required)
    public_ip_address_id = string (Required)
    subnet_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
