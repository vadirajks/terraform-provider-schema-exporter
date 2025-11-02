resource "google_composer_environment" "name" {
  name = string (Required)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  config block "list" (Optional) {
    airflow_uri = string (Computed)
    dag_gcs_prefix = string (Computed)
    enable_private_builds_only = bool (Optional, Computed)
    enable_private_environment = bool (Optional, Computed)
    environment_size = string (Optional, Computed)
    gke_cluster = string (Computed)
    node_count = number (Optional, Computed)
    resilience_mode = string (Optional, Computed)

    data_retention_config block "list" (Optional) {

      airflow_metadata_retention_config block "list" (Optional) {
        retention_days = number (Optional, Computed)
        retention_mode = string (Optional, Computed)
      }

      task_logs_retention_config block "list" (Optional) {
        storage_mode = string (Optional)
      }
    }

    database_config block "list" (Optional) {
      machine_type = string (Optional)
      zone = string (Optional)
    }

    encryption_config block "list" (Optional) {
      kms_key_name = string (Required)
    }

    maintenance_window block "list" (Optional) {
      end_time = string (Required)
      recurrence = string (Required)
      start_time = string (Required)
    }

    master_authorized_networks_config block "list" (Optional) {
      enabled = bool (Required)

      cidr_blocks block "set" (Optional) {
        cidr_block = string (Required)
        display_name = string (Optional)
      }
    }

    node_config block "list" (Optional) {
      composer_internal_ipv4_cidr_block = string (Optional, Computed)
      composer_network_attachment = string (Optional, Computed)
      disk_size_gb = number (Optional, Computed)
      enable_ip_masq_agent = bool (Optional, Computed)
      machine_type = string (Optional, Computed)
      network = string (Optional, Computed)
      oauth_scopes = ['set', 'string'] (Optional, Computed)
      service_account = string (Optional, Computed)
      subnetwork = string (Optional, Computed)
      tags = ['set', 'string'] (Optional)
      zone = string (Optional, Computed)

      ip_allocation_policy block "list" (Optional) {
        cluster_ipv4_cidr_block = string (Optional)
        cluster_secondary_range_name = string (Optional)
        services_ipv4_cidr_block = string (Optional)
        services_secondary_range_name = string (Optional)
        use_ip_aliases = bool (Optional)
      }
    }

    private_environment_config block "list" (Optional) {
      cloud_composer_connection_subnetwork = string (Optional, Computed)
      cloud_composer_network_ipv4_cidr_block = string (Optional, Computed)
      cloud_sql_ipv4_cidr_block = string (Optional, Computed)
      connection_type = string (Optional, Computed)
      enable_private_endpoint = bool (Optional)
      enable_privately_used_public_ips = bool (Optional, Computed)
      master_ipv4_cidr_block = string (Optional, Computed)
      web_server_ipv4_cidr_block = string (Optional, Computed)
    }

    recovery_config block "list" (Optional) {

      scheduled_snapshots_config block "list" (Optional) {
        enabled = bool (Required)
        snapshot_creation_schedule = string (Optional)
        snapshot_location = string (Optional)
        time_zone = string (Optional)
      }
    }

    software_config block "list" (Optional) {
      airflow_config_overrides = ['map', 'string'] (Optional)
      env_variables = ['map', 'string'] (Optional)
      image_version = string (Optional, Computed)
      pypi_packages = ['map', 'string'] (Optional)
      python_version = string (Optional, Computed)
      scheduler_count = number (Optional, Computed)
      web_server_plugins_mode = string (Optional, Computed)

      cloud_data_lineage_integration block "list" (Optional) {
        enabled = bool (Required)
      }
    }

    web_server_config block "list" (Optional) {
      machine_type = string (Required)
    }

    web_server_network_access_control block "list" (Optional) {

      allowed_ip_range block "set" (Optional) {
        value = string (Required)
        description = string (Optional)
      }
    }

    workloads_config block "list" (Optional) {

      dag_processor block "list" (Optional) {
        count = number (Optional, Computed)
        cpu = number (Optional, Computed)
        memory_gb = number (Optional, Computed)
        storage_gb = number (Optional, Computed)
      }

      scheduler block "list" (Optional) {
        count = number (Optional, Computed)
        cpu = number (Optional, Computed)
        memory_gb = number (Optional, Computed)
        storage_gb = number (Optional, Computed)
      }

      triggerer block "list" (Optional) {
        count = number (Required)
        cpu = number (Required)
        memory_gb = number (Required)
      }

      web_server block "list" (Optional) {
        cpu = number (Optional, Computed)
        memory_gb = number (Optional, Computed)
        storage_gb = number (Optional, Computed)
      }

      worker block "list" (Optional) {
        cpu = number (Optional, Computed)
        max_count = number (Optional, Computed)
        memory_gb = number (Optional, Computed)
        min_count = number (Optional, Computed)
        storage_gb = number (Optional, Computed)
      }
    }
  }

  storage_config block "list" (Optional) {
    bucket = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
