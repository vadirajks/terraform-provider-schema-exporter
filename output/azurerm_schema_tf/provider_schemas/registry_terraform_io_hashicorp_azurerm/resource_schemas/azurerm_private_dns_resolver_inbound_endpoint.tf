resource "azurerm_private_dns_resolver_inbound_endpoint" "name" {
  location = string (Required)
  name = string (Required)
  private_dns_resolver_id = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  ip_configurations block "list" (Required) {
    subnet_id = string (Required)
    private_ip_address = string (Optional, Computed)
    private_ip_allocation_method = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
