resource "azurerm_nginx_configuration" "name" {
  nginx_deployment_id = string (Required)
  root_file = string (Required)
  id = string (Optional, Computed)
  package_data = string (Optional)

  config_file block "set" (Optional) {
    content = string (Required)
    virtual_path = string (Required)
  }

  protected_file block "set" (Optional) {
    content = string (Required)
    virtual_path = string (Required)
    content_hash = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
