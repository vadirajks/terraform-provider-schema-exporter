resource "azurerm_mssql_job_credential" "name" {
  job_agent_id = string (Required)
  name = string (Required)
  username = string (Required)
  id = string (Optional, Computed)
  password = string (Optional)
  password_wo = string (Optional)
  password_wo_version = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
