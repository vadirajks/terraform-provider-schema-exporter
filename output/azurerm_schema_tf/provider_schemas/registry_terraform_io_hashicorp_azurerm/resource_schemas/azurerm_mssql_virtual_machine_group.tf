resource "azurerm_mssql_virtual_machine_group" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sql_image_offer = string (Required)
  sql_image_sku = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  wsfc_domain_profile block "list" (Required) {
    cluster_subnet_type = string (Required)
    fqdn = string (Required)
    cluster_bootstrap_account_name = string (Optional)
    cluster_operator_account_name = string (Optional)
    organizational_unit_path = string (Optional)
    sql_service_account_name = string (Optional)
    storage_account_primary_key = string (Optional)
    storage_account_url = string (Optional)
  }
}
