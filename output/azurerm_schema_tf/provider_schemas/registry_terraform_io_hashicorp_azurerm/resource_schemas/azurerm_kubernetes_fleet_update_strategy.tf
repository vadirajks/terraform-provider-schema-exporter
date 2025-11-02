resource "azurerm_kubernetes_fleet_update_strategy" "name" {
  kubernetes_fleet_manager_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  stage block "list" (Required) {
    name = string (Required)
    after_stage_wait_in_seconds = number (Optional)

    group block "list" (Required) {
      name = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
