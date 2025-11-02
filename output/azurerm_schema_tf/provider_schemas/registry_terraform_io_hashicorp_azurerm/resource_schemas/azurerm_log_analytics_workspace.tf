resource "azurerm_log_analytics_workspace" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  allow_resource_only_permissions = bool (Optional)
  cmk_for_query_forced = bool (Optional)
  daily_quota_gb = number (Optional)
  data_collection_rule_id = string (Optional)
  id = string (Optional, Computed)
  immediate_data_purge_on_30_days_enabled = bool (Optional)
  internet_ingestion_enabled = bool (Optional)
  internet_query_enabled = bool (Optional)
  local_authentication_disabled = bool (Optional, Computed)
  local_authentication_enabled = bool (Optional, Computed)
  primary_shared_key = string (Computed)
  reservation_capacity_in_gb_per_day = number (Optional)
  retention_in_days = number (Optional, Computed)
  secondary_shared_key = string (Computed)
  sku = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  workspace_id = string (Computed)

  identity block "list" (Optional) {
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
