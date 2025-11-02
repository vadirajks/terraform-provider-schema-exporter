data "azurerm_dns_mx_record" "name" {
  resource_group_name = string (Required)
  zone_name = string (Required)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional)
  record = ['set', ['object', {'exchange': 'string', 'preference': 'string'}]] (Computed)
  tags = ['map', 'string'] (Computed)
  ttl = number (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
