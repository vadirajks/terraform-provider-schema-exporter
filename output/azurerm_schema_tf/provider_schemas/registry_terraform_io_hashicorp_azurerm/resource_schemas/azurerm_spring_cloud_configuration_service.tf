resource "azurerm_spring_cloud_configuration_service" "name" {
  name = string (Required)
  spring_cloud_service_id = string (Required)
  generation = string (Optional)
  id = string (Optional, Computed)
  refresh_interval_in_seconds = number (Optional)

  repository block "list" (Optional) {
    label = string (Required)
    name = string (Required)
    patterns = ['set', 'string'] (Required)
    uri = string (Required)
    ca_certificate_id = string (Optional)
    host_key = string (Optional)
    host_key_algorithm = string (Optional)
    password = string (Optional)
    private_key = string (Optional)
    search_paths = ['set', 'string'] (Optional)
    strict_host_key_checking = bool (Optional)
    username = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
