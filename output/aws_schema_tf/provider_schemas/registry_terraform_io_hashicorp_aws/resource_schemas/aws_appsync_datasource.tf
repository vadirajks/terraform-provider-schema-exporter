resource "aws_appsync_datasource" "name" {
  api_id = string (Required)
  name = string (Required)
  type = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  service_role_arn = string (Optional)

  dynamodb_config block "list" (Optional) {
    table_name = string (Required)
    region = string (Optional, Computed)
    use_caller_credentials = bool (Optional)
    versioned = bool (Optional)

    delta_sync_config block "list" (Optional) {
      delta_sync_table_name = string (Required)
      base_table_ttl = number (Optional)
      delta_sync_table_ttl = number (Optional)
    }
  }

  elasticsearch_config block "list" (Optional) {
    endpoint = string (Required)
    region = string (Optional, Computed)
  }

  event_bridge_config block "list" (Optional) {
    event_bus_arn = string (Required)
  }

  http_config block "list" (Optional) {
    endpoint = string (Required)

    authorization_config block "list" (Optional) {
      authorization_type = string (Optional)

      aws_iam_config block "list" (Optional) {
        signing_region = string (Optional)
        signing_service_name = string (Optional)
      }
    }
  }

  lambda_config block "list" (Optional) {
    function_arn = string (Required)
  }

  opensearchservice_config block "list" (Optional) {
    endpoint = string (Required)
    region = string (Optional, Computed)
  }

  relational_database_config block "list" (Optional) {
    source_type = string (Optional)

    http_endpoint_config block "list" (Optional) {
      aws_secret_store_arn = string (Required)
      db_cluster_identifier = string (Required)
      database_name = string (Optional)
      region = string (Optional, Computed)
      schema = string (Optional)
    }
  }
}
