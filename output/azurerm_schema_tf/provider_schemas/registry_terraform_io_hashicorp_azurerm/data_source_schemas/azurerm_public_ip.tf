data "azurerm_public_ip" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  allocation_method = string (Computed)
  ddos_protection_mode = string (Computed)
  ddos_protection_plan_id = string (Computed)
  domain_name_label = string (Computed)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  idle_timeout_in_minutes = number (Computed)
  ip_address = string (Computed)
  ip_tags = ['map', 'string'] (Computed)
  ip_version = string (Computed)
  location = string (Computed)
  reverse_fqdn = string (Computed)
  sku = string (Computed)
  tags = ['map', 'string'] (Computed)
  zones = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
