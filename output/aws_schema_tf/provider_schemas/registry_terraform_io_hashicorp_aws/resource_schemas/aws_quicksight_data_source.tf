resource "aws_quicksight_data_source" "name" {
  data_source_id = string (Required)
  name = string (Required)
  type = string (Required)
  arn = string (Computed)
  aws_account_id = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  credentials block "list" (Optional) {
    copy_source_arn = string (Optional)
    secret_arn = string (Optional)

    credential_pair block "list" (Optional) {
      password = string (Required)
      username = string (Required)
    }
  }

  parameters block "list" (Required) {

    amazon_elasticsearch block "list" (Optional) {
      domain = string (Required)
    }

    athena block "list" (Optional) {
      work_group = string (Optional)
    }

    aurora block "list" (Optional) {
      database = string (Required)
      host = string (Required)
      port = number (Required)
    }

    aurora_postgresql block "list" (Optional) {
      database = string (Required)
      host = string (Required)
      port = number (Required)
    }

    aws_iot_analytics block "list" (Optional) {
      data_set_name = string (Required)
    }

    databricks block "list" (Optional) {
      host = string (Required)
      port = number (Required)
      sql_endpoint_path = string (Required)
    }

    jira block "list" (Optional) {
      site_base_url = string (Required)
    }

    maria_db block "list" (Optional) {
      database = string (Required)
      host = string (Required)
      port = number (Required)
    }

    mysql block "list" (Optional) {
      database = string (Required)
      host = string (Required)
      port = number (Required)
    }

    oracle block "list" (Optional) {
      database = string (Required)
      host = string (Required)
      port = number (Required)
    }

    postgresql block "list" (Optional) {
      database = string (Required)
      host = string (Required)
      port = number (Required)
    }

    presto block "list" (Optional) {
      catalog = string (Required)
      host = string (Required)
      port = number (Required)
    }

    rds block "list" (Optional) {
      database = string (Required)
      instance_id = string (Required)
    }

    redshift block "list" (Optional) {
      database = string (Required)
      cluster_id = string (Optional)
      host = string (Optional)
      port = number (Optional)
    }

    s3 block "list" (Optional) {
      role_arn = string (Optional)

      manifest_file_location block "list" (Required) {
        bucket = string (Required)
        key = string (Required)
      }
    }

    service_now block "list" (Optional) {
      site_base_url = string (Required)
    }

    snowflake block "list" (Optional) {
      database = string (Required)
      host = string (Required)
      warehouse = string (Required)
    }

    spark block "list" (Optional) {
      host = string (Required)
      port = number (Required)
    }

    sql_server block "list" (Optional) {
      database = string (Required)
      host = string (Required)
      port = number (Required)
    }

    teradata block "list" (Optional) {
      database = string (Required)
      host = string (Required)
      port = number (Required)
    }

    twitter block "list" (Optional) {
      max_rows = number (Required)
      query = string (Required)
    }
  }

  permission block "set" (Optional) {
    actions = ['set', 'string'] (Required)
    principal = string (Required)
  }

  ssl_properties block "list" (Optional) {
    disable_ssl = bool (Required)
  }

  vpc_connection_properties block "list" (Optional) {
    vpc_connection_arn = string (Required)
  }
}
