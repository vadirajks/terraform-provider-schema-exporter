resource "google_oracle_database_db_system" "name" {
  db_system_id = string (Required)
  display_name = string (Required)
  location = string (Required)
  odb_subnet = string (Required)
  create_time = string (Computed)
  deletion_protection = bool (Optional)
  effective_labels = ['map', 'string'] (Computed)
  entitlement_id = string (Computed)
  gcp_oracle_zone = string (Optional, Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  oci_url = string (Computed)
  odb_network = string (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  properties block "list" (Optional) {
    compute_count = number (Required)
    database_edition = string (Required)
    initial_data_storage_size_gb = number (Required)
    license_model = string (Required)
    shape = string (Required)
    ssh_public_keys = ['list', 'string'] (Required)
    compute_model = string (Optional, Computed)
    data_storage_size_gb = number (Optional, Computed)
    domain = string (Optional, Computed)
    hostname = string (Computed)
    hostname_prefix = string (Optional)
    lifecycle_state = string (Computed)
    memory_size_gb = number (Optional, Computed)
    node_count = number (Optional, Computed)
    ocid = string (Computed)
    private_ip = string (Optional, Computed)
    reco_storage_size_gb = number (Optional, Computed)

    data_collection_options block "list" (Optional) {
      is_diagnostics_events_enabled = bool (Optional)
      is_incident_logs_enabled = bool (Optional)
    }

    db_home block "list" (Optional) {
      db_version = string (Required)
      display_name = string (Optional)
      is_unified_auditing_enabled = bool (Optional, Computed)

      database block "list" (Required) {
        admin_password = string (Required)
        database_id = string (Required)
        character_set = string (Optional, Computed)
        create_time = string (Computed)
        db_home_name = string (Optional, Computed)
        db_name = string (Optional)
        db_unique_name = string (Optional, Computed)
        gcp_oracle_zone = string (Optional, Computed)
        name = string (Computed)
        ncharacter_set = string (Optional, Computed)
        oci_url = string (Computed)
        ops_insights_status = string (Computed)
        tde_wallet_password = string (Optional)

        properties block "list" (Optional) {
          db_version = string (Required)
          state = string (Computed)

          database_management_config block "list" (Optional) {
            management_state = string (Computed)
            management_type = string (Computed)
          }

          db_backup_config block "list" (Optional) {
            auto_backup_enabled = bool (Optional)
            auto_full_backup_day = string (Optional)
            auto_full_backup_window = string (Optional, Computed)
            auto_incremental_backup_window = string (Optional, Computed)
            backup_deletion_policy = string (Optional, Computed)
            retention_period_days = number (Optional, Computed)

            backup_destination_details block "list" (Optional) {
              type = string (Optional, Computed)
            }
          }
        }
      }
    }

    db_system_options block "list" (Optional) {
      storage_management = string (Optional, Computed)
    }

    time_zone block "list" (Optional) {
      id = string (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
