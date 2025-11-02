data "azurerm_dns_caa_record" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  zone_name = string (Required)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  record = ['set', ['object', {'flags': 'number', 'tag': 'string', 'value': 'string'}]] (Computed)
  tags = ['map', 'string'] (Computed)
  ttl = number (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
