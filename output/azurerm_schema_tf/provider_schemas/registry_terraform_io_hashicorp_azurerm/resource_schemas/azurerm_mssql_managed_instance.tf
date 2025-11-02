resource "azurerm_mssql_managed_instance" "name" {
  license_type = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  storage_size_in_gb = number (Required)
  subnet_id = string (Required)
  vcores = number (Required)
  administrator_login = string (Optional, Computed)
  administrator_login_password = string (Optional)
  collation = string (Optional)
  database_format = string (Optional)
  dns_zone = string (Computed)
  dns_zone_partner_id = string (Optional)
  fqdn = string (Computed)
  hybrid_secondary_usage = string (Optional)
  id = string (Optional, Computed)
  maintenance_configuration_name = string (Optional)
  minimum_tls_version = string (Optional)
  proxy_override = string (Optional)
  public_data_endpoint_enabled = bool (Optional)
  service_principal_type = string (Optional)
  storage_account_type = string (Optional)
  tags = ['map', 'string'] (Optional)
  timezone_id = string (Optional)
  zone_redundant_enabled = bool (Optional)

  azure_active_directory_administrator block "list" (Optional) {
    login_username = string (Required)
    object_id = string (Required)
    principal_type = string (Required)
    azuread_authentication_only_enabled = bool (Optional)
    tenant_id = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
