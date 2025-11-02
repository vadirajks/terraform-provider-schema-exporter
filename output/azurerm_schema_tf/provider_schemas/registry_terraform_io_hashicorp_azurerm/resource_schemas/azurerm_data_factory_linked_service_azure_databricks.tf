resource "azurerm_data_factory_linked_service_azure_databricks" "name" {
  adb_domain = string (Required)
  data_factory_id = string (Required)
  name = string (Required)
  access_token = string (Optional)
  additional_properties = ['map', 'string'] (Optional)
  annotations = ['list', 'string'] (Optional)
  description = string (Optional)
  existing_cluster_id = string (Optional)
  id = string (Optional, Computed)
  integration_runtime_name = string (Optional)
  msi_work_space_resource_id = string (Optional)
  parameters = ['map', 'string'] (Optional)

  instance_pool block "list" (Optional) {
    cluster_version = string (Required)
    instance_pool_id = string (Required)
    max_number_of_workers = number (Optional)
    min_number_of_workers = number (Optional)
  }

  key_vault_password block "list" (Optional) {
    linked_service_name = string (Required)
    secret_name = string (Required)
  }

  new_cluster_config block "list" (Optional) {
    cluster_version = string (Required)
    node_type = string (Required)
    custom_tags = ['map', 'string'] (Optional)
    driver_node_type = string (Optional)
    init_scripts = ['list', 'string'] (Optional)
    log_destination = string (Optional)
    max_number_of_workers = number (Optional)
    min_number_of_workers = number (Optional)
    spark_config = ['map', 'string'] (Optional)
    spark_environment_variables = ['map', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
