resource "aws_kinesisanalyticsv2_application" "name" {
  name = string (Required)
  runtime_environment = string (Required)
  service_execution_role = string (Required)
  application_mode = string (Optional, Computed)
  arn = string (Computed)
  create_timestamp = string (Computed)
  description = string (Optional)
  force_stop = bool (Optional)
  id = string (Optional, Computed)
  last_update_timestamp = string (Computed)
  region = string (Optional, Computed)
  start_application = bool (Optional)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version_id = number (Computed)

  application_configuration block "list" (Optional) {

    application_code_configuration block "list" (Required) {
      code_content_type = string (Required)

      code_content block "list" (Optional) {
        text_content = string (Optional)

        s3_content_location block "list" (Optional) {
          bucket_arn = string (Required)
          file_key = string (Required)
          object_version = string (Optional)
        }
      }
    }

    application_snapshot_configuration block "list" (Optional) {
      snapshots_enabled = bool (Required)
    }

    environment_properties block "list" (Optional) {

      property_group block "set" (Required) {
        property_group_id = string (Required)
        property_map = ['map', 'string'] (Required)
      }
    }

    flink_application_configuration block "list" (Optional) {

      checkpoint_configuration block "list" (Optional) {
        configuration_type = string (Required)
        checkpoint_interval = number (Optional, Computed)
        checkpointing_enabled = bool (Optional, Computed)
        min_pause_between_checkpoints = number (Optional, Computed)
      }

      monitoring_configuration block "list" (Optional) {
        configuration_type = string (Required)
        log_level = string (Optional, Computed)
        metrics_level = string (Optional, Computed)
      }

      parallelism_configuration block "list" (Optional) {
        configuration_type = string (Required)
        auto_scaling_enabled = bool (Optional, Computed)
        parallelism = number (Optional, Computed)
        parallelism_per_kpu = number (Optional, Computed)
      }
    }

    run_configuration block "list" (Optional) {

      application_restore_configuration block "list" (Optional) {
        application_restore_type = string (Optional, Computed)
        snapshot_name = string (Optional)
      }

      flink_run_configuration block "list" (Optional) {
        allow_non_restored_state = bool (Optional, Computed)
      }
    }

    sql_application_configuration block "list" (Optional) {

      input block "list" (Optional) {
        name_prefix = string (Required)
        in_app_stream_names = ['list', 'string'] (Computed)
        input_id = string (Computed)

        input_parallelism block "list" (Optional) {
          count = number (Optional, Computed)
        }

        input_processing_configuration block "list" (Optional) {

          input_lambda_processor block "list" (Required) {
            resource_arn = string (Required)
          }
        }

        input_schema block "list" (Required) {
          record_encoding = string (Optional)

          record_column block "list" (Required) {
            name = string (Required)
            sql_type = string (Required)
            mapping = string (Optional)
          }

          record_format block "list" (Required) {
            record_format_type = string (Required)

            mapping_parameters block "list" (Required) {

              csv_mapping_parameters block "list" (Optional) {
                record_column_delimiter = string (Required)
                record_row_delimiter = string (Required)
              }

              json_mapping_parameters block "list" (Optional) {
                record_row_path = string (Required)
              }
            }
          }
        }

        input_starting_position_configuration block "list" (Optional) {
          input_starting_position = string (Optional, Computed)
        }

        kinesis_firehose_input block "list" (Optional) {
          resource_arn = string (Required)
        }

        kinesis_streams_input block "list" (Optional) {
          resource_arn = string (Required)
        }
      }

      output block "set" (Optional) {
        name = string (Required)
        output_id = string (Computed)

        destination_schema block "list" (Required) {
          record_format_type = string (Required)
        }

        kinesis_firehose_output block "list" (Optional) {
          resource_arn = string (Required)
        }

        kinesis_streams_output block "list" (Optional) {
          resource_arn = string (Required)
        }

        lambda_output block "list" (Optional) {
          resource_arn = string (Required)
        }
      }

      reference_data_source block "list" (Optional) {
        table_name = string (Required)
        reference_id = string (Computed)

        reference_schema block "list" (Required) {
          record_encoding = string (Optional)

          record_column block "list" (Required) {
            name = string (Required)
            sql_type = string (Required)
            mapping = string (Optional)
          }

          record_format block "list" (Required) {
            record_format_type = string (Required)

            mapping_parameters block "list" (Required) {

              csv_mapping_parameters block "list" (Optional) {
                record_column_delimiter = string (Required)
                record_row_delimiter = string (Required)
              }

              json_mapping_parameters block "list" (Optional) {
                record_row_path = string (Required)
              }
            }
          }
        }

        s3_reference_data_source block "list" (Required) {
          bucket_arn = string (Required)
          file_key = string (Required)
        }
      }
    }

    vpc_configuration block "list" (Optional) {
      security_group_ids = ['set', 'string'] (Required)
      subnet_ids = ['set', 'string'] (Required)
      vpc_configuration_id = string (Computed)
      vpc_id = string (Computed)
    }
  }

  cloudwatch_logging_options block "list" (Optional) {
    log_stream_arn = string (Required)
    cloudwatch_logging_option_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
