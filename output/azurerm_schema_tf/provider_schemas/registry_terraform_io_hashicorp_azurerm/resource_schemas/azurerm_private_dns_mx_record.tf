resource "azurerm_private_dns_mx_record" "name" {
  resource_group_name = string (Required)
  ttl = number (Required)
  zone_name = string (Required)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional)
  tags = ['map', 'string'] (Optional)

  record block "set" (Required) {
    exchange = string (Required)
    preference = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
