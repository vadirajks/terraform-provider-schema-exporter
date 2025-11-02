resource "azurerm_private_dns_srv_record" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  ttl = number (Required)
  zone_name = string (Required)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  record block "set" (Required) {
    port = number (Required)
    priority = number (Required)
    target = string (Required)
    weight = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
