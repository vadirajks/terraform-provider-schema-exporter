resource "azurerm_data_factory" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  customer_managed_key_id = string (Optional, Computed)
  customer_managed_key_identity_id = string (Optional, Computed)
  id = string (Optional, Computed)
  managed_virtual_network_enabled = bool (Optional)
  public_network_enabled = bool (Optional)
  purview_id = string (Optional)
  tags = ['map', 'string'] (Optional)

  github_configuration block "list" (Optional) {
    account_name = string (Required)
    branch_name = string (Required)
    repository_name = string (Required)
    root_folder = string (Required)
    git_url = string (Optional)
    publishing_enabled = bool (Optional)
  }

  global_parameter block "set" (Optional) {
    name = string (Required)
    type = string (Required)
    value = string (Required)
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

  vsts_configuration block "list" (Optional) {
    account_name = string (Required)
    branch_name = string (Required)
    project_name = string (Required)
    repository_name = string (Required)
    root_folder = string (Required)
    tenant_id = string (Required)
    publishing_enabled = bool (Optional)
  }
}
