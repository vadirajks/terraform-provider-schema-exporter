resource "azurerm_dns_caa_record" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  ttl = number (Required)
  zone_name = string (Required)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  record block "set" (Required) {
    flags = number (Required)
    tag = string (Required)
    value = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
