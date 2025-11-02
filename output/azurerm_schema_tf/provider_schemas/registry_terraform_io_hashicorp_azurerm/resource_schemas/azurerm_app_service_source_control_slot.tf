resource "azurerm_app_service_source_control_slot" "name" {
  slot_id = string (Required)
  branch = string (Optional, Computed)
  id = string (Optional, Computed)
  repo_url = string (Optional, Computed)
  rollback_enabled = bool (Optional)
  scm_type = string (Computed)
  use_local_git = bool (Optional)
  use_manual_integration = bool (Optional)
  use_mercurial = bool (Optional)
  uses_github_action = bool (Computed)

  github_action_configuration block "list" (Optional) {
    generate_workflow_file = bool (Optional)
    linux_action = bool (Computed)

    code_configuration block "list" (Optional) {
      runtime_stack = string (Required)
      runtime_version = string (Required)
    }

    container_configuration block "list" (Optional) {
      image_name = string (Required)
      registry_url = string (Required)
      registry_password = string (Optional)
      registry_username = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
