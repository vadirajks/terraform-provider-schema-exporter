resource "azurerm_container_registry_task_schedule_run_now" "name" {
  container_registry_task_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
