resource "azurerm_automation_hybrid_runbook_worker_group" "name" {
  automation_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  credential_name = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
