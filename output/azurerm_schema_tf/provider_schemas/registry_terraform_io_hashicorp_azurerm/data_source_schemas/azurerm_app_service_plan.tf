data "azurerm_app_service_plan" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  app_service_environment_id = string (Computed)
  id = string (Optional, Computed)
  is_xenon = bool (Computed)
  kind = string (Computed)
  location = string (Computed)
  maximum_elastic_worker_count = number (Computed)
  maximum_number_of_workers = number (Computed)
  per_site_scaling = bool (Computed)
  reserved = bool (Computed)
  sku = ['list', ['object', {'capacity': 'number', 'size': 'string', 'tier': 'string'}]] (Computed)
  tags = ['map', 'string'] (Computed)
  zone_redundant = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
