resource "azurerm_resource_deployment_script_azure_power_shell" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  retention_interval = string (Required)
  version = string (Required)
  cleanup_preference = string (Optional)
  command_line = string (Optional)
  force_update_tag = string (Optional)
  id = string (Optional, Computed)
  outputs = string (Computed)
  primary_script_uri = string (Optional)
  script_content = string (Optional)
  supporting_script_uris = ['list', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  timeout = string (Optional)

  container block "list" (Optional) {
    container_group_name = string (Optional)
  }

  environment_variable block "set" (Optional) {
    name = string (Required)
    secure_value = string (Optional)
    value = string (Optional)
  }

  identity block "list" (Optional) {
    identity_ids = ['set', 'string'] (Required)
    type = string (Required)
  }

  storage_account block "list" (Optional) {
    key = string (Required)
    name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
