resource "aws_timestreamquery_scheduled_query" "name" {
  execution_role_arn = string (Required)
  name = string (Required)
  query_string = string (Required)
  arn = string (Computed)
  creation_time = string (Computed)
  kms_key_id = string (Optional)
  next_invocation_time = string (Computed)
  previous_invocation_time = string (Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  error_report_configuration block "list" (Optional) {

    s3_configuration block "list" (Optional) {
      bucket_name = string (Required)
      encryption_option = string (Optional, Computed)
      object_key_prefix = string (Optional)
    }
  }

  last_run_summary block "list" (Optional) {
    failure_reason = string (Computed)
    invocation_time = string (Computed)
    run_status = string (Computed)
    trigger_time = string (Computed)

    error_report_location block "list" (Optional) {

      s3_report_location block "list" (Optional) {
        bucket_name = string (Computed)
        object_key = string (Computed)
      }
    }

    execution_stats block "list" (Optional) {
      bytes_metered = number (Computed)
      cumulative_bytes_scanned = number (Computed)
      data_writes = number (Computed)
      execution_time_in_millis = number (Computed)
      query_result_rows = number (Computed)
      records_ingested = number (Computed)
    }

    query_insights_response block "list" (Optional) {
      output_bytes = number (Computed)
      output_rows = number (Computed)
      query_table_count = number (Computed)

      query_spatial_coverage block "list" (Optional) {

        max block "list" (Optional) {
          partition_key = ['list', 'string'] (Computed)
          table_arn = string (Computed)
          value = number (Computed)
        }
      }

      query_temporal_range block "list" (Optional) {

        max block "list" (Optional) {
          table_arn = string (Computed)
          value = number (Computed)
        }
      }
    }
  }

  notification_configuration block "list" (Optional) {

    sns_configuration block "list" (Optional) {
      topic_arn = string (Required)
    }
  }

  recently_failed_runs block "list" (Optional) {
    failure_reason = string (Computed)
    invocation_time = string (Computed)
    run_status = string (Computed)
    trigger_time = string (Computed)

    error_report_location block "list" (Optional) {

      s3_report_location block "list" (Optional) {
        bucket_name = string (Computed)
        object_key = string (Computed)
      }
    }

    execution_stats block "list" (Optional) {
      bytes_metered = number (Computed)
      cumulative_bytes_scanned = number (Computed)
      data_writes = number (Computed)
      execution_time_in_millis = number (Computed)
      query_result_rows = number (Computed)
      records_ingested = number (Computed)
    }

    query_insights_response block "list" (Optional) {
      output_bytes = number (Computed)
      output_rows = number (Computed)
      query_table_count = number (Computed)

      query_spatial_coverage block "list" (Optional) {

        max block "list" (Optional) {
          partition_key = ['list', 'string'] (Computed)
          table_arn = string (Computed)
          value = number (Computed)
        }
      }

      query_temporal_range block "list" (Optional) {

        max block "list" (Optional) {
          table_arn = string (Computed)
          value = number (Computed)
        }
      }
    }
  }

  schedule_configuration block "list" (Optional) {
    schedule_expression = string (Required)
  }

  target_configuration block "list" (Optional) {

    timestream_configuration block "list" (Optional) {
      database_name = string (Required)
      table_name = string (Required)
      time_column = string (Required)
      measure_name_column = string (Optional)

      dimension_mapping block "list" (Optional) {
        dimension_value_type = string (Required)
        name = string (Required)
      }

      mixed_measure_mapping block "list" (Optional) {
        measure_value_type = string (Required)
        measure_name = string (Optional)
        source_column = string (Optional)
        target_measure_name = string (Optional)

        multi_measure_attribute_mapping block "list" (Optional) {
          measure_value_type = string (Required)
          source_column = string (Required)
          target_multi_measure_attribute_name = string (Optional)
        }
      }

      multi_measure_mappings block "list" (Optional) {
        target_multi_measure_name = string (Optional)

        multi_measure_attribute_mapping block "list" (Optional) {
          measure_value_type = string (Required)
          source_column = string (Required)
          target_multi_measure_attribute_name = string (Optional)
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
