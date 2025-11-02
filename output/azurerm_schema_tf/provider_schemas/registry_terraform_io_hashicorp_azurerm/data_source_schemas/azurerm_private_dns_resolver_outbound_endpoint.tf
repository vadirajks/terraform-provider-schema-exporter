data "azurerm_private_dns_resolver_outbound_endpoint" "name" {
  name = string (Required)
  private_dns_resolver_id = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  subnet_id = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
