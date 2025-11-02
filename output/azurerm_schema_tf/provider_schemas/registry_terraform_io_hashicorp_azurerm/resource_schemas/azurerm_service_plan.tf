resource "azurerm_service_plan" "name" {
  location = string (Required)
  name = string (Required)
  os_type = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  app_service_environment_id = string (Optional)
  id = string (Optional, Computed)
  kind = string (Computed)
  maximum_elastic_worker_count = number (Optional, Computed)
  per_site_scaling_enabled = bool (Optional)
  premium_plan_auto_scale_enabled = bool (Optional)
  reserved = bool (Computed)
  tags = ['map', 'string'] (Optional)
  worker_count = number (Optional, Computed)
  zone_balancing_enabled = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
