resource "azurerm_log_analytics_cluster" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  cluster_id = string (Computed)
  id = string (Optional, Computed)
  size_gb = number (Optional)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Required) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
