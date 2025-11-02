data "azurerm_dns_aaaa_record" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  zone_name = string (Required)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  records = ['set', 'string'] (Computed)
  tags = ['map', 'string'] (Computed)
  target_resource_id = string (Computed)
  ttl = number (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
