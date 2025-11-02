resource "azurerm_batch_job" "name" {
  batch_pool_id = string (Required)
  name = string (Required)
  common_environment_properties = ['map', 'string'] (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  priority = number (Optional)
  task_retry_maximum = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
