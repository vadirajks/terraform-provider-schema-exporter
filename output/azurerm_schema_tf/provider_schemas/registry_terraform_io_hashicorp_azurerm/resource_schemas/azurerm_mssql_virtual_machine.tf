resource "azurerm_mssql_virtual_machine" "name" {
  virtual_machine_id = string (Required)
  id = string (Optional, Computed)
  r_services_enabled = bool (Optional)
  sql_connectivity_port = number (Optional)
  sql_connectivity_type = string (Optional)
  sql_connectivity_update_password = string (Optional)
  sql_connectivity_update_username = string (Optional)
  sql_license_type = string (Optional)
  sql_virtual_machine_group_id = string (Optional)
  tags = ['map', 'string'] (Optional)

  assessment block "list" (Optional) {
    enabled = bool (Optional)
    run_immediately = bool (Optional)

    schedule block "list" (Optional) {
      day_of_week = string (Required)
      start_time = string (Required)
      monthly_occurrence = number (Optional)
      weekly_interval = number (Optional)
    }
  }

  auto_backup block "list" (Optional) {
    retention_period_in_days = number (Required)
    storage_account_access_key = string (Required)
    storage_blob_endpoint = string (Required)
    encryption_enabled = bool (Optional, Computed)
    encryption_password = string (Optional)
    system_databases_backup_enabled = bool (Optional)

    manual_schedule block "list" (Optional) {
      full_backup_frequency = string (Required)
      full_backup_start_hour = number (Required)
      full_backup_window_in_hours = number (Required)
      log_backup_frequency_in_minutes = number (Required)
      days_of_week = ['set', 'string'] (Optional)
    }
  }

  auto_patching block "list" (Optional) {
    day_of_week = string (Required)
    maintenance_window_duration_in_minutes = number (Required)
    maintenance_window_starting_hour = number (Required)
  }

  key_vault_credential block "list" (Optional) {
    key_vault_url = string (Required)
    name = string (Required)
    service_principal_name = string (Required)
    service_principal_secret = string (Required)
  }

  sql_instance block "list" (Optional) {
    adhoc_workloads_optimization_enabled = bool (Optional)
    collation = string (Optional)
    instant_file_initialization_enabled = bool (Optional)
    lock_pages_in_memory_enabled = bool (Optional)
    max_dop = number (Optional)
    max_server_memory_mb = number (Optional)
    min_server_memory_mb = number (Optional)
  }

  storage_configuration block "list" (Optional) {
    disk_type = string (Required)
    storage_workload_type = string (Required)
    system_db_on_data_disk_enabled = bool (Optional)

    data_settings block "list" (Optional) {
      default_file_path = string (Required)
      luns = ['list', 'number'] (Required)
    }

    log_settings block "list" (Optional) {
      default_file_path = string (Required)
      luns = ['list', 'number'] (Required)
    }

    temp_db_settings block "list" (Optional) {
      default_file_path = string (Required)
      luns = ['list', 'number'] (Required)
      data_file_count = number (Optional)
      data_file_growth_in_mb = number (Optional)
      data_file_size_mb = number (Optional)
      log_file_growth_mb = number (Optional)
      log_file_size_mb = number (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  wsfc_domain_credential block "list" (Optional) {
    cluster_bootstrap_account_password = string (Required)
    cluster_operator_account_password = string (Required)
    sql_service_account_password = string (Required)
  }
}
