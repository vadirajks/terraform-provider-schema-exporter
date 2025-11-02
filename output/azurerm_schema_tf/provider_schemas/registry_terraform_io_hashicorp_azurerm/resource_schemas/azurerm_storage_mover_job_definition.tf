resource "azurerm_storage_mover_job_definition" "name" {
  copy_mode = string (Required)
  name = string (Required)
  source_name = string (Required)
  storage_mover_project_id = string (Required)
  target_name = string (Required)
  agent_name = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  source_sub_path = string (Optional)
  target_sub_path = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
