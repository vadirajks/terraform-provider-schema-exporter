resource "azurerm_data_factory_integration_runtime_azure_ssis" "name" {
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

  catalog_info block "list" (Optional) {
    server_endpoint = string (Required)
    administrator_login = string (Optional)
    administrator_password = string (Optional)
    dual_standby_pair_name = string (Optional)
    elastic_pool_name = string (Optional)
    pricing_tier = string (Optional)
  }

  copy_compute_scale block "list" (Optional) {
    data_integration_unit = number (Optional)
    time_to_live = number (Optional)
  }

  custom_setup_script block "list" (Optional) {
    blob_container_uri = string (Required)
    sas_token = string (Required)
  }

  express_custom_setup block "list" (Optional) {
    environment = ['map', 'string'] (Optional)
    powershell_version = string (Optional)

    command_key block "list" (Optional) {
      target_name = string (Required)
      user_name = string (Required)
      password = string (Optional)

      key_vault_password block "list" (Optional) {
        linked_service_name = string (Required)
        secret_name = string (Required)
        parameters = ['map', 'string'] (Optional)
        secret_version = string (Optional)
      }
    }

    component block "list" (Optional) {
      name = string (Required)
      license = string (Optional)

      key_vault_license block "list" (Optional) {
        linked_service_name = string (Required)
        secret_name = string (Required)
        parameters = ['map', 'string'] (Optional)
        secret_version = string (Optional)
      }
    }
  }

  express_vnet_integration block "list" (Optional) {
    subnet_id = string (Required)
  }

  package_store block "list" (Optional) {
    linked_service_name = string (Required)
    name = string (Required)
  }

  pipeline_external_compute_scale block "list" (Optional) {
    number_of_external_nodes = number (Optional)
    number_of_pipeline_nodes = number (Optional)
    time_to_live = number (Optional)
  }

  proxy block "list" (Optional) {
    self_hosted_integration_runtime_name = string (Required)
    staging_storage_linked_service_name = string (Required)
    path = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  vnet_integration block "list" (Optional) {
    public_ips = ['list', 'string'] (Optional)
    subnet_id = string (Optional)
    subnet_name = string (Optional)
    vnet_id = string (Optional)
  }
}
