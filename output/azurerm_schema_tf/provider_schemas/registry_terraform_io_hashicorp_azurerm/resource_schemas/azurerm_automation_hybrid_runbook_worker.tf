resource "azurerm_automation_hybrid_runbook_worker" "name" {
  automation_account_name = string (Required)
  resource_group_name = string (Required)
  vm_resource_id = string (Required)
  worker_group_name = string (Required)
  worker_id = string (Required)
  id = string (Optional, Computed)
  ip = string (Computed)
  last_seen_date_time = string (Computed)
  registration_date_time = string (Computed)
  worker_name = string (Computed)
  worker_type = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
