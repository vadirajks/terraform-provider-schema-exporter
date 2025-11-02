resource "google_bigquery_connection" "name" {
  connection_id = string (Optional, Computed)
  description = string (Optional)
  friendly_name = string (Optional)
  has_credential = bool (Computed)
  id = string (Optional, Computed)
  kms_key_name = string (Optional)
  location = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)

  aws block "list" (Optional) {

    access_role block "list" (Required) {
      iam_role_id = string (Required)
      identity = string (Computed)
    }
  }

  azure block "list" (Optional) {
    customer_tenant_id = string (Required)
    application = string (Computed)
    client_id = string (Computed)
    federated_application_client_id = string (Optional)
    identity = string (Computed)
    object_id = string (Computed)
    redirect_uri = string (Computed)
  }

  cloud_resource block "list" (Optional) {
    service_account_id = string (Computed)
  }

  cloud_spanner block "list" (Optional) {
    database = string (Required)
    database_role = string (Optional)
    max_parallelism = number (Optional)
    use_data_boost = bool (Optional)
    use_parallelism = bool (Optional)
    use_serverless_analytics = bool (Optional)
  }

  cloud_sql block "list" (Optional) {
    database = string (Required)
    instance_id = string (Required)
    type = string (Required)
    service_account_id = string (Computed)

    credential block "list" (Required) {
      password = string (Required)
      username = string (Required)
    }
  }

  spark block "list" (Optional) {
    service_account_id = string (Computed)

    metastore_service_config block "list" (Optional) {
      metastore_service = string (Optional)
    }

    spark_history_server_config block "list" (Optional) {
      dataproc_cluster = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
