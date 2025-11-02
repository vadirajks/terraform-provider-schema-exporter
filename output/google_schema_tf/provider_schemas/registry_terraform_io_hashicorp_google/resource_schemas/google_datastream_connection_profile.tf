resource "google_datastream_connection_profile" "name" {
  connection_profile_id = string (Required)
  display_name = string (Required)
  location = string (Required)
  create_without_validation = bool (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  bigquery_profile block "list" (Optional) {
  }

  forward_ssh_connectivity block "list" (Optional) {
    hostname = string (Required)
    username = string (Required)
    password = string (Optional)
    port = number (Optional)
    private_key = string (Optional)
  }

  gcs_profile block "list" (Optional) {
    bucket = string (Required)
    root_path = string (Optional)
  }

  mongodb_profile block "list" (Optional) {
    username = string (Required)
    password = string (Optional)
    replica_set = string (Optional)
    secret_manager_stored_password = string (Optional)

    host_addresses block "list" (Required) {
      hostname = string (Required)
      port = number (Optional)
    }

    srv_connection_format block "list" (Optional) {
    }

    ssl_config block "list" (Optional) {
      ca_certificate = string (Optional)
      ca_certificate_set = bool (Computed)
      client_certificate = string (Optional)
      client_certificate_set = bool (Computed)
      client_key = string (Optional)
      client_key_set = bool (Computed)
      secret_manager_stored_client_key = string (Optional)
    }

    standard_connection_format block "list" (Optional) {
      direct_connection = bool (Optional)
    }
  }

  mysql_profile block "list" (Optional) {
    hostname = string (Required)
    username = string (Required)
    password = string (Optional)
    port = number (Optional)
    secret_manager_stored_password = string (Optional)

    ssl_config block "list" (Optional) {
      ca_certificate = string (Optional)
      ca_certificate_set = bool (Computed)
      client_certificate = string (Optional)
      client_certificate_set = bool (Computed)
      client_key = string (Optional)
      client_key_set = bool (Computed)
    }
  }

  oracle_profile block "list" (Optional) {
    database_service = string (Required)
    hostname = string (Required)
    username = string (Required)
    connection_attributes = ['map', 'string'] (Optional)
    password = string (Optional)
    port = number (Optional)
    secret_manager_stored_password = string (Optional)
  }

  postgresql_profile block "list" (Optional) {
    database = string (Required)
    hostname = string (Required)
    username = string (Required)
    password = string (Optional)
    port = number (Optional)
    secret_manager_stored_password = string (Optional)
  }

  private_connectivity block "list" (Optional) {
    private_connection = string (Required)
  }

  sql_server_profile block "list" (Optional) {
    database = string (Required)
    hostname = string (Required)
    username = string (Required)
    password = string (Optional)
    port = number (Optional)
    secret_manager_stored_password = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
