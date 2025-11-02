resource "azurerm_dns_aaaa_record" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  ttl = number (Required)
  zone_name = string (Required)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  records = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  target_resource_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
