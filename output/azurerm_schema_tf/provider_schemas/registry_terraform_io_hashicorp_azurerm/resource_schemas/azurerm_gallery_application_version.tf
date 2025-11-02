resource "azurerm_gallery_application_version" "name" {
  gallery_application_id = string (Required)
  location = string (Required)
  name = string (Required)
  config_file = string (Optional)
  enable_health_check = bool (Optional)
  end_of_life_date = string (Optional)
  exclude_from_latest = bool (Optional)
  id = string (Optional, Computed)
  package_file = string (Optional)
  tags = ['map', 'string'] (Optional)

  manage_action block "list" (Required) {
    install = string (Required)
    remove = string (Required)
    update = string (Optional)
  }

  source block "list" (Required) {
    media_link = string (Required)
    default_configuration_link = string (Optional)
  }

  target_region block "list" (Required) {
    name = string (Required)
    regional_replica_count = number (Required)
    exclude_from_latest = bool (Optional)
    storage_account_type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
