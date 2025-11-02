resource "azurerm_automation_source_control" "name" {
  automation_account_id = string (Required)
  folder_path = string (Required)
  name = string (Required)
  repository_url = string (Required)
  source_control_type = string (Required)
  automatic_sync = bool (Optional)
  branch = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  publish_runbook_enabled = bool (Optional)

  security block "list" (Required) {
    token = string (Required)
    token_type = string (Required)
    refresh_token = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
