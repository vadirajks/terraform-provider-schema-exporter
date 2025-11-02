resource "azurerm_private_dns_resolver_outbound_endpoint" "name" {
  location = string (Required)
  name = string (Required)
  private_dns_resolver_id = string (Required)
  subnet_id = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
