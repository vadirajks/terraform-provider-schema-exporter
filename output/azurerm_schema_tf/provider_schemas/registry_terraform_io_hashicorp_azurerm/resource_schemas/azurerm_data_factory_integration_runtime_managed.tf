resource "azurerm_data_factory_integration_runtime_managed" "name" {
  data_factory_id = string (Required)
  location = string (Required)
  name = string (Required)
  node_size = string (Required)
  credential_name = string (Optional)
  description = string (Optional)
  edition = string (Optional)
  id = string (Optional, Computed)
  license_type = string (Optional)
  max_parallel_executions_per_node = number (Optional)
  number_of_nodes = number (Optional)

  catalog_info block "list"  (Optional){
    server_endpoint = string (Required)
    administrator_login = string (Optional)
    administrator_password = string (Optional)
    pricing_tier = string (Optional)
  }

  custom_setup_script block "list"  (Optional){
    blob_container_uri = string (Required)
    sas_token = string (Required)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  vnet_integration block "list"  (Optional){
    subnet_name = string (Required)
    vnet_id = string (Required)
  }
}
