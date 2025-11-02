resource "azurerm_iothub_endpoint_cosmosdb_account" "name" {
  container_name = string (Required)
  database_name = string (Required)
  endpoint_uri = string (Required)
  iothub_id = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  authentication_type = string (Optional)
  id = string (Optional, Computed)
  identity_id = string (Optional)
  partition_key_name = string (Optional)
  partition_key_template = string (Optional)
  primary_key = string (Optional)
  secondary_key = string (Optional)
  subscription_id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
