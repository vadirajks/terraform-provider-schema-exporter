resource "azurerm_mssql_job_step" "name" {
  job_id = string (Required)
  job_step_index = number (Required)
  job_target_group_id = string (Required)
  name = string (Required)
  sql_script = string (Required)
  id = string (Optional, Computed)
  initial_retry_interval_seconds = number (Optional)
  job_credential_id = string (Optional)
  maximum_retry_interval_seconds = number (Optional)
  retry_attempts = number (Optional)
  retry_interval_backoff_multiplier = number (Optional)
  timeout_seconds = number (Optional)

  output_target block "list" (Optional) {
    mssql_database_id = string (Required)
    table_name = string (Required)
    job_credential_id = string (Optional)
    schema_name = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
