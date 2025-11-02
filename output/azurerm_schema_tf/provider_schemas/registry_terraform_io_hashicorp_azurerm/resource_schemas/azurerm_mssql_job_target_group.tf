resource "azurerm_mssql_job_target_group" "name" {
  job_agent_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  job_target block "set" (Optional) {
    server_name = string (Required)
    database_name = string (Optional)
    elastic_pool_name = string (Optional)
    job_credential_id = string (Optional)
    membership_type = string (Optional)
    type = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
