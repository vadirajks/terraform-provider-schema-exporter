data "azurerm_service_plan" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  app_service_environment_id = string (Computed)
  id = string (Optional, Computed)
  kind = string (Computed)
  location = string (Computed)
  maximum_elastic_worker_count = number (Computed)
  os_type = string (Computed)
  per_site_scaling_enabled = bool (Computed)
  reserved = bool (Computed)
  sku_name = string (Computed)
  tags = ['map', 'string'] (Computed)
  worker_count = number (Computed)
  zone_balancing_enabled = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
