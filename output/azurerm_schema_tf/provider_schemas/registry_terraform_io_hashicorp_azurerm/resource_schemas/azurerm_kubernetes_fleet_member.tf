resource "azurerm_kubernetes_fleet_member" "name" {
  kubernetes_cluster_id = string (Required)
  kubernetes_fleet_id = string (Required)
  name = string (Required)
  group = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
