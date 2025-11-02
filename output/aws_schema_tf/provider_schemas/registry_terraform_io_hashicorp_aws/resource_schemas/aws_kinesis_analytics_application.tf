resource "aws_kinesis_analytics_application" "name" {
  name = string (Required)
  arn = string (Computed)
  code = string (Optional)
  create_timestamp = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  last_update_timestamp = string (Computed)
  region = string (Optional, Computed)
  start_application = bool (Optional)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version = number (Computed)

  cloudwatch_logging_options block "list" (Optional) {
    log_stream_arn = string (Required)
    role_arn = string (Required)
    id = string (Computed)
  }

  inputs block "list" (Optional) {
    name_prefix = string (Required)
    id = string (Computed)
    stream_names = ['list', 'string'] (Computed)

    kinesis_firehose block "list" (Optional) {
      resource_arn = string (Required)
      role_arn = string (Required)
    }

    kinesis_stream block "list" (Optional) {
      resource_arn = string (Required)
      role_arn = string (Required)
    }

    parallelism block "list" (Optional) {
      count = number (Optional, Computed)
    }

    processing_configuration block "list" (Optional) {

      lambda block "list" (Required) {
        resource_arn = string (Required)
        role_arn = string (Required)
      }
    }

    schema block "list" (Required) {
      record_encoding = string (Optional)

      record_columns block "list" (Required) {
        name = string (Required)
        sql_type = string (Required)
        mapping = string (Optional)
      }

      record_format block "list" (Required) {
        record_format_type = string (Computed)

        mapping_parameters block "list" (Optional) {

          csv block "list" (Optional) {
            record_column_delimiter = string (Required)
            record_row_delimiter = string (Required)
          }

          json block "list" (Optional) {
            record_row_path = string (Required)
          }
        }
      }
    }

    starting_position_configuration block "list" (Optional) {
      starting_position = string (Optional, Computed)
    }
  }

  outputs block "set" (Optional) {
    name = string (Required)
    id = string (Computed)

    kinesis_firehose block "list" (Optional) {
      resource_arn = string (Required)
      role_arn = string (Required)
    }

    kinesis_stream block "list" (Optional) {
      resource_arn = string (Required)
      role_arn = string (Required)
    }

    lambda block "list" (Optional) {
      resource_arn = string (Required)
      role_arn = string (Required)
    }

    schema block "list" (Required) {
      record_format_type = string (Required)
    }
  }

  reference_data_sources block "list" (Optional) {
    table_name = string (Required)
    id = string (Computed)

    s3 block "list" (Required) {
      bucket_arn = string (Required)
      file_key = string (Required)
      role_arn = string (Required)
    }

    schema block "list" (Required) {
      record_encoding = string (Optional)

      record_columns block "list" (Required) {
        name = string (Required)
        sql_type = string (Required)
        mapping = string (Optional)
      }

      record_format block "list" (Required) {
        record_format_type = string (Computed)

        mapping_parameters block "list" (Optional) {

          csv block "list" (Optional) {
            record_column_delimiter = string (Required)
            record_row_delimiter = string (Required)
          }

          json block "list" (Optional) {
            record_row_path = string (Required)
          }
        }
      }
    }
  }
}
