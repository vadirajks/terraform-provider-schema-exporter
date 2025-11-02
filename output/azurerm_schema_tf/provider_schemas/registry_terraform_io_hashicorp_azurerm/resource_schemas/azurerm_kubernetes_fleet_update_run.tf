resource "azurerm_kubernetes_fleet_update_run" "name" {
  kubernetes_fleet_manager_id = string (Required)
  name = string (Required)
  fleet_update_strategy_id = string (Optional)
  id = string (Optional, Computed)

  managed_cluster_update block "list" (Required) {

    node_image_selection block "list" (Optional) {
      type = string (Required)
    }

    upgrade block "list" (Required) {
      type = string (Required)
      kubernetes_version = string (Optional)
    }
  }

  stage block "list" (Optional) {
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
