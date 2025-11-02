resource "azurerm_machine_learning_workspace" "name" {
  application_insights_id = string (Required)
  key_vault_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  storage_account_id = string (Required)
  container_registry_id = string (Optional)
  description = string (Optional)
  discovery_url = string (Computed)
  friendly_name = string (Optional)
  high_business_impact = bool (Optional)
  id = string (Optional, Computed)
  image_build_compute_name = string (Optional)
  kind = string (Optional)
  primary_user_assigned_identity = string (Optional)
  public_network_access_enabled = bool (Optional)
  service_side_encryption_enabled = bool (Optional)
  sku_name = string (Optional)
  tags = ['map', 'string'] (Optional)
  v1_legacy_mode_enabled = bool (Optional)
  workspace_id = string (Computed)

  encryption block "list" (Optional) {
    key_id = string (Required)
    key_vault_id = string (Required)
    user_assigned_identity_id = string (Optional)
  }

  feature_store block "list" (Optional) {
    computer_spark_runtime_version = string (Optional)
    offline_connection_name = string (Optional)
    online_connection_name = string (Optional)
  }

  identity block "list" (Required) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  managed_network block "list" (Optional) {
    isolation_mode = string (Optional, Computed)
    provision_on_creation_enabled = bool (Optional)
  }

  serverless_compute block "list" (Optional) {
    public_ip_enabled = bool (Optional)
    subnet_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
