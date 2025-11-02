data "azurerm_nginx_configuration" "name" {
  nginx_deployment_id = string (Required)
  config_file = ['set', ['object', {'content': 'string', 'virtual_path': 'string'}]] (Computed)
  id = string (Optional, Computed)
  package_data = string (Computed)
  protected_file = ['set', ['object', {'content': 'string', 'content_hash': 'string', 'virtual_path': 'string'}]] (Computed)
  root_file = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
