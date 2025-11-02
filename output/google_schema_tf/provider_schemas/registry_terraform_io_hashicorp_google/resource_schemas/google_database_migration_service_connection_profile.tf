resource "google_database_migration_service_connection_profile" "name" {
  connection_profile_id = string (Required)
  create_time = string (Computed)
  dbprovider = string (Computed)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  error = ['list', ['object', {'code': 'number', 'details': ['list', ['map', 'string']], 'message': 'string'}]] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  alloydb block "list" (Optional) {
    cluster_id = string (Required)

    settings block "list" (Optional) {
      vpc_network = string (Required)
      labels = ['map', 'string'] (Optional)

      initial_user block "list" (Required) {
        password = string (Required)
        user = string (Required)
        password_set = bool (Computed)
      }

      primary_instance_settings block "list" (Optional) {
        id = string (Required)
        database_flags = ['map', 'string'] (Optional)
        labels = ['map', 'string'] (Optional)
        private_ip = string (Computed)

        machine_config block "list" (Required) {
          cpu_count = number (Required)
        }
      }
    }
  }

  cloudsql block "list" (Optional) {
    cloud_sql_id = string (Computed)
    private_ip = string (Computed)
    public_ip = string (Computed)

    settings block "list" (Optional) {
      source_id = string (Required)
      activation_policy = string (Optional)
      auto_storage_increase = bool (Optional)
      cmek_key_name = string (Optional)
      collation = string (Optional)
      data_disk_size_gb = string (Optional)
      data_disk_type = string (Optional)
      database_flags = ['map', 'string'] (Optional)
      database_version = string (Optional)
      edition = string (Optional)
      root_password = string (Optional)
      root_password_set = bool (Computed)
      storage_auto_resize_limit = string (Optional)
      tier = string (Optional)
      user_labels = ['map', 'string'] (Optional)
      zone = string (Optional)

      ip_config block "list" (Optional) {
        enable_ipv4 = bool (Optional)
        private_network = string (Optional)
        require_ssl = bool (Optional)

        authorized_networks block "list" (Optional) {
          value = string (Required)
          expire_time = string (Optional)
          label = string (Optional)
          ttl = string (Optional)
        }
      }
    }
  }

  mysql block "list" (Optional) {
    cloud_sql_id = string (Optional)
    host = string (Optional)
    password = string (Optional)
    password_set = bool (Computed)
    port = number (Optional)
    username = string (Optional)

    ssl block "list" (Optional) {
      ca_certificate = string (Optional)
      client_certificate = string (Optional)
      client_key = string (Optional)
      type = string (Optional)
    }
  }

  oracle block "list" (Optional) {
    database_service = string (Required)
    host = string (Required)
    password = string (Required)
    port = number (Required)
    username = string (Required)
    password_set = bool (Computed)

    forward_ssh_connectivity block "list" (Optional) {
      hostname = string (Required)
      port = number (Required)
      username = string (Required)
      password = string (Optional)
      private_key = string (Optional)
    }

    private_connectivity block "list" (Optional) {
      private_connection = string (Required)
    }

    ssl block "list" (Optional) {
      ca_certificate = string (Optional)
      client_certificate = string (Optional)
      client_key = string (Optional)
      type = string (Computed)
    }

    static_service_ip_connectivity block "list" (Optional) {
    }
  }

  postgresql block "list" (Optional) {
    alloydb_cluster_id = string (Optional)
    cloud_sql_id = string (Optional)
    host = string (Optional)
    network_architecture = string (Computed)
    password = string (Optional)
    password_set = bool (Computed)
    port = number (Optional)
    username = string (Optional)

    ssl block "list" (Optional) {
      ca_certificate = string (Optional)
      client_certificate = string (Optional)
      client_key = string (Optional)
      type = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
