resource "google_sql_database_instance" "name" {
  database_version = string (Required)
  available_maintenance_versions = ['list', 'string'] (Computed)
  backupdr_backup = string (Optional)
  connection_name = string (Computed)
  deletion_protection = bool (Optional)
  dns_name = string (Computed)
  dns_names = ['list', ['object', {'connection_type': 'string', 'dns_scope': 'string', 'name': 'string'}]] (Computed)
  encryption_key_name = string (Optional, Computed)
  final_backup_description = string (Optional)
  first_ip_address = string (Computed)
  id = string (Optional, Computed)
  instance_type = string (Optional, Computed)
  ip_address = ['list', ['object', {'ip_address': 'string', 'time_to_retire': 'string', 'type': 'string'}]] (Computed)
  maintenance_version = string (Optional, Computed)
  master_instance_name = string (Optional, Computed)
  name = string (Optional, Computed)
  node_count = number (Optional, Computed)
  private_ip_address = string (Computed)
  project = string (Optional, Computed)
  psc_service_attachment_link = string (Computed)
  public_ip_address = string (Computed)
  region = string (Optional, Computed)
  replica_names = ['list', 'string'] (Optional, Computed)
  root_password = string (Optional)
  self_link = string (Computed)
  server_ca_cert = ['list', ['object', {'cert': 'string', 'common_name': 'string', 'create_time': 'string', 'expiration_time': 'string', 'sha1_fingerprint': 'string'}]] (Computed)
  service_account_email_address = string (Computed)

  clone block "list" (Optional) {
    source_instance_name = string (Required)
    allocated_ip_range = string (Optional)
    database_names = ['list', 'string'] (Optional)
    point_in_time = string (Optional)
    preferred_zone = string (Optional)
    source_instance_deletion_time = string (Optional)
  }

  point_in_time_restore_context block "list" (Optional) {
    datasource = string (Required)
    allocated_ip_range = string (Optional)
    point_in_time = string (Optional)
    preferred_zone = string (Optional)
    target_instance = string (Optional)
  }

  replica_configuration block "list" (Optional) {
    ca_certificate = string (Optional)
    cascadable_replica = bool (Optional)
    client_certificate = string (Optional)
    client_key = string (Optional)
    connect_retry_interval = number (Optional)
    dump_file_path = string (Optional)
    failover_target = bool (Optional)
    master_heartbeat_period = number (Optional)
    password = string (Optional)
    ssl_cipher = string (Optional)
    username = string (Optional)
    verify_server_certificate = bool (Optional)
  }

  replication_cluster block "list" (Optional) {
    dr_replica = bool (Computed)
    failover_dr_replica_name = string (Optional)
    psa_write_endpoint = string (Optional)
  }

  restore_backup_context block "list" (Optional) {
    backup_run_id = number (Required)
    instance_id = string (Optional)
    project = string (Optional)
  }

  settings block "list" (Optional) {
    tier = string (Required)
    activation_policy = string (Optional)
    availability_type = string (Optional)
    collation = string (Optional)
    connector_enforcement = string (Optional, Computed)
    deletion_protection_enabled = bool (Optional)
    disk_autoresize = bool (Optional)
    disk_autoresize_limit = number (Optional)
    disk_size = number (Optional, Computed)
    disk_type = string (Optional, Computed)
    edition = string (Optional, Computed)
    effective_availability_type = string (Computed)
    enable_dataplex_integration = bool (Optional)
    enable_google_ml_integration = bool (Optional)
    pricing_plan = string (Optional)
    retain_backups_on_delete = bool (Optional)
    time_zone = string (Optional)
    user_labels = ['map', 'string'] (Optional, Computed)
    version = number (Computed)

    active_directory_config block "list" (Optional) {
      domain = string (Required)
    }

    advanced_machine_features block "list" (Optional) {
      threads_per_core = number (Optional)
    }

    backup_configuration block "list" (Optional) {
      binary_log_enabled = bool (Optional)
      enabled = bool (Optional)
      location = string (Optional)
      point_in_time_recovery_enabled = bool (Optional)
      start_time = string (Optional, Computed)
      transaction_log_retention_days = number (Optional, Computed)

      backup_retention_settings block "list" (Optional) {
        retained_backups = number (Required)
        retention_unit = string (Optional)
      }
    }

    connection_pool_config block "set" (Optional) {
      connection_pooling_enabled = bool (Optional)

      flags block "set" (Optional) {
        name = string (Required)
        value = string (Required)
      }
    }

    data_cache_config block "list" (Optional) {
      data_cache_enabled = bool (Optional)
    }

    database_flags block "set" (Optional) {
      name = string (Required)
      value = string (Required)
    }

    deny_maintenance_period block "list" (Optional) {
      end_date = string (Required)
      start_date = string (Required)
      time = string (Required)
    }

    final_backup_config block "list" (Optional) {
      enabled = bool (Optional)
      retention_days = number (Optional)
    }

    insights_config block "list" (Optional) {
      query_insights_enabled = bool (Optional)
      query_plans_per_minute = number (Optional, Computed)
      query_string_length = number (Optional)
      record_application_tags = bool (Optional)
      record_client_address = bool (Optional)
    }

    ip_configuration block "list" (Optional) {
      allocated_ip_range = string (Optional)
      custom_subject_alternative_names = ['set', 'string'] (Optional)
      enable_private_path_for_google_cloud_services = bool (Optional)
      ipv4_enabled = bool (Optional)
      private_network = string (Optional)
      server_ca_mode = string (Optional, Computed)
      server_ca_pool = string (Optional)
      ssl_mode = string (Optional, Computed)

      authorized_networks block "set" (Optional) {
        value = string (Required)
        expiration_time = string (Optional)
        name = string (Optional)
      }

      psc_config block "set" (Optional) {
        allowed_consumer_projects = ['set', 'string'] (Optional)
        network_attachment_uri = string (Optional)
        psc_enabled = bool (Optional)

        psc_auto_connections block "list" (Optional) {
          consumer_network = string (Required)
          consumer_network_status = string (Computed)
          consumer_service_project_id = string (Optional)
          ip_address = string (Computed)
          status = string (Computed)
        }
      }
    }

    location_preference block "list" (Optional) {
      follow_gae_application = string (Optional)
      secondary_zone = string (Optional)
      zone = string (Optional)
    }

    maintenance_window block "list" (Optional) {
      day = number (Optional)
      hour = number (Optional)
      update_track = string (Optional)
    }

    password_validation_policy block "list" (Optional) {
      enable_password_policy = bool (Required)
      complexity = string (Optional)
      disallow_username_substring = bool (Optional)
      min_length = number (Optional)
      password_change_interval = string (Optional)
      reuse_interval = number (Optional)
    }

    read_pool_auto_scale_config block "list" (Optional) {
      disable_scale_in = bool (Optional)
      enabled = bool (Optional)
      max_node_count = number (Optional)
      min_node_count = number (Optional)
      scale_in_cooldown_seconds = number (Optional)
      scale_out_cooldown_seconds = number (Optional)

      target_metrics block "set" (Optional) {
        metric = string (Optional)
        target_value = number (Optional)
      }
    }

    sql_server_audit_config block "list" (Optional) {
      bucket = string (Optional)
      retention_interval = string (Optional)
      upload_interval = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
