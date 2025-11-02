resource "azurerm_sql_managed_instance" "name" {
  administrator_login = string (Required)
  administrator_login_password = string (Required)
  license_type = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  storage_size_in_gb = number (Required)
  subnet_id = string (Required)
  vcores = number (Required)
  collation = string (Optional)
  dns_zone_partner_id = string (Optional)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  minimum_tls_version = string (Optional)
  proxy_override = string (Optional)
  public_data_endpoint_enabled = bool (Optional)
  storage_account_type = string (Optional)
  tags = ['map', 'string'] (Optional)
  timezone_id = string (Optional)

  identity block "list"  (Optional){
    type = string (Required)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
