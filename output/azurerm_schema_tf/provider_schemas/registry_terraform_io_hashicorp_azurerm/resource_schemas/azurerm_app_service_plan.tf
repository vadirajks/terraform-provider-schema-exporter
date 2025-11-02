resource "azurerm_app_service_plan" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  app_service_environment_id = string (Optional)
  id = string (Optional, Computed)
  is_xenon = bool (Optional)
  kind = string (Optional)
  maximum_elastic_worker_count = number (Optional, Computed)
  maximum_number_of_workers = number (Computed)
  per_site_scaling = bool (Optional)
  reserved = bool (Optional)
  tags = ['map', 'string'] (Optional)
  zone_redundant = bool (Optional)

  sku block "list" (Required) {
    size = string (Required)
    tier = string (Required)
    capacity = number (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
