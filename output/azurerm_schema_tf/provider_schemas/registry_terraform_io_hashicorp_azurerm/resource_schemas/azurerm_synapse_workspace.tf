resource "azurerm_synapse_workspace" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  storage_data_lake_gen2_filesystem_id = string (Required)
  azuread_authentication_only = bool (Optional)
  compute_subnet_id = string (Optional)
  connectivity_endpoints = ['map', 'string'] (Computed)
  data_exfiltration_protection_enabled = bool (Optional)
  id = string (Optional, Computed)
  linking_allowed_for_aad_tenant_ids = ['list', 'string'] (Optional)
  managed_resource_group_name = string (Optional, Computed)
  managed_virtual_network_enabled = bool (Optional)
  public_network_access_enabled = bool (Optional)
  purview_id = string (Optional)
  sql_administrator_login = string (Optional)
  sql_administrator_login_password = string (Optional)
  sql_identity_control_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

  azure_devops_repo block "list" (Optional) {
    account_name = string (Required)
    branch_name = string (Required)
    project_name = string (Required)
    repository_name = string (Required)
    root_folder = string (Required)
    last_commit_id = string (Optional)
    tenant_id = string (Optional, Computed)
  }

  customer_managed_key block "list" (Optional) {
    key_versionless_id = string (Required)
    key_name = string (Optional)
    user_assigned_identity_id = string (Optional)
  }

  github_repo block "list" (Optional) {
    account_name = string (Required)
    branch_name = string (Required)
    repository_name = string (Required)
    root_folder = string (Required)
    git_url = string (Optional)
    last_commit_id = string (Optional)
  }

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
