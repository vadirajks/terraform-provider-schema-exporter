data "azurerm_data_factory" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  github_configuration = ['list', ['object', {'account_name': 'string', 'branch_name': 'string', 'git_url': 'string', 'repository_name': 'string', 'root_folder': 'string'}]] (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)
  vsts_configuration = ['list', ['object', {'account_name': 'string', 'branch_name': 'string', 'project_name': 'string', 'repository_name': 'string', 'root_folder': 'string', 'tenant_id': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
