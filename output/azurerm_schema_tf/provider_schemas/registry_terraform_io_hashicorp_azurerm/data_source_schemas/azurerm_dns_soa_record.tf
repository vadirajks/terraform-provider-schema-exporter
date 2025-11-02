data "azurerm_dns_soa_record" "name" {
  resource_group_name = string (Required)
  zone_name = string (Required)
  email = string (Computed)
  expire_time = number (Computed)
  fqdn = string (Computed)
  host_name = string (Computed)
  id = string (Optional, Computed)
  minimum_ttl = number (Computed)
  name = string (Optional)
  refresh_time = number (Computed)
  retry_time = number (Computed)
  serial_number = number (Computed)
  tags = ['map', 'string'] (Computed)
  ttl = number (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
