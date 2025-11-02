resource "aws_appflow_flow" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  flow_status = string (Computed)
  id = string (Optional, Computed)
  kms_arn = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  destination_flow_config block "list" (Required) {
    connector_type = string (Required)
    api_version = string (Optional)
    connector_profile_name = string (Optional)

    destination_connector_properties block "list" (Required) {

      custom_connector block "list" (Optional) {
        entity_name = string (Required)
        custom_properties = ['map', 'string'] (Optional)
        id_field_names = ['list', 'string'] (Optional)
        write_operation_type = string (Optional)

        error_handling_config block "list" (Optional) {
          bucket_name = string (Optional)
          bucket_prefix = string (Optional)
          fail_on_first_destination_error = bool (Optional)
        }
      }

      customer_profiles block "list" (Optional) {
        domain_name = string (Required)
        object_type_name = string (Optional)
      }

      event_bridge block "list" (Optional) {
        object = string (Required)

        error_handling_config block "list" (Optional) {
          bucket_name = string (Optional)
          bucket_prefix = string (Optional)
          fail_on_first_destination_error = bool (Optional)
        }
      }

      honeycode block "list" (Optional) {
        object = string (Required)

        error_handling_config block "list" (Optional) {
          bucket_name = string (Optional)
          bucket_prefix = string (Optional)
          fail_on_first_destination_error = bool (Optional)
        }
      }

      lookout_metrics block "list" (Optional) {
      }

      marketo block "list" (Optional) {
        object = string (Required)

        error_handling_config block "list" (Optional) {
          bucket_name = string (Optional)
          bucket_prefix = string (Optional)
          fail_on_first_destination_error = bool (Optional)
        }
      }

      redshift block "list" (Optional) {
        intermediate_bucket_name = string (Required)
        object = string (Required)
        bucket_prefix = string (Optional)

        error_handling_config block "list" (Optional) {
          bucket_name = string (Optional)
          bucket_prefix = string (Optional)
          fail_on_first_destination_error = bool (Optional)
        }
      }

      s3 block "list" (Optional) {
        bucket_name = string (Required)
        bucket_prefix = string (Optional, Computed)

        s3_output_format_config block "list" (Optional) {
          file_type = string (Optional)
          preserve_source_data_typing = bool (Optional, Computed)

          aggregation_config block "list" (Optional) {
            aggregation_type = string (Optional, Computed)
            target_file_size = number (Optional, Computed)
          }

          prefix_config block "list" (Optional) {
            prefix_format = string (Optional)
            prefix_hierarchy = ['list', 'string'] (Optional, Computed)
            prefix_type = string (Optional)
          }
        }
      }

      salesforce block "list" (Optional) {
        object = string (Required)
        data_transfer_api = string (Optional)
        id_field_names = ['list', 'string'] (Optional)
        write_operation_type = string (Optional)

        error_handling_config block "list" (Optional) {
          bucket_name = string (Optional)
          bucket_prefix = string (Optional)
          fail_on_first_destination_error = bool (Optional)
        }
      }

      sapo_data block "list" (Optional) {
        object_path = string (Required)
        id_field_names = ['list', 'string'] (Optional)
        write_operation_type = string (Optional)

        error_handling_config block "list" (Optional) {
          bucket_name = string (Optional)
          bucket_prefix = string (Optional)
          fail_on_first_destination_error = bool (Optional)
        }

        success_response_handling_config block "list" (Optional) {
          bucket_name = string (Optional)
          bucket_prefix = string (Optional)
        }
      }

      snowflake block "list" (Optional) {
        intermediate_bucket_name = string (Required)
        object = string (Required)
        bucket_prefix = string (Optional)

        error_handling_config block "list" (Optional) {
          bucket_name = string (Optional)
          bucket_prefix = string (Optional)
          fail_on_first_destination_error = bool (Optional)
        }
      }

      upsolver block "list" (Optional) {
        bucket_name = string (Required)
        bucket_prefix = string (Optional)

        s3_output_format_config block "list" (Required) {
          file_type = string (Optional)

          aggregation_config block "list" (Optional) {
            aggregation_type = string (Optional)
          }

          prefix_config block "list" (Required) {
            prefix_type = string (Required)
            prefix_format = string (Optional)
            prefix_hierarchy = ['list', 'string'] (Optional, Computed)
          }
        }
      }

      zendesk block "list" (Optional) {
        object = string (Required)
        id_field_names = ['list', 'string'] (Optional)
        write_operation_type = string (Optional)

        error_handling_config block "list" (Optional) {
          bucket_name = string (Optional)
          bucket_prefix = string (Optional)
          fail_on_first_destination_error = bool (Optional)
        }
      }
    }
  }

  metadata_catalog_config block "list" (Optional) {

    glue_data_catalog block "list" (Optional) {
      database_name = string (Required)
      role_arn = string (Required)
      table_prefix = string (Required)
    }
  }

  source_flow_config block "list" (Required) {
    connector_type = string (Required)
    api_version = string (Optional)
    connector_profile_name = string (Optional)

    incremental_pull_config block "list" (Optional) {
      datetime_type_field_name = string (Optional)
    }

    source_connector_properties block "list" (Required) {

      amplitude block "list" (Optional) {
        object = string (Required)
      }

      custom_connector block "list" (Optional) {
        entity_name = string (Required)
        custom_properties = ['map', 'string'] (Optional)
      }

      datadog block "list" (Optional) {
        object = string (Required)
      }

      dynatrace block "list" (Optional) {
        object = string (Required)
      }

      google_analytics block "list" (Optional) {
        object = string (Required)
      }

      infor_nexus block "list" (Optional) {
        object = string (Required)
      }

      marketo block "list" (Optional) {
        object = string (Required)
      }

      s3 block "list" (Optional) {
        bucket_name = string (Required)
        bucket_prefix = string (Required)

        s3_input_format_config block "list" (Optional) {
          s3_input_file_type = string (Optional)
        }
      }

      salesforce block "list" (Optional) {
        object = string (Required)
        data_transfer_api = string (Optional)
        enable_dynamic_field_update = bool (Optional)
        include_deleted_records = bool (Optional)
      }

      sapo_data block "list" (Optional) {
        object_path = string (Required)

        pagination_config block "list" (Optional) {
          max_page_size = number (Required)
        }

        parallelism_config block "list" (Optional) {
          max_page_size = number (Required)
        }
      }

      service_now block "list" (Optional) {
        object = string (Required)
      }

      singular block "list" (Optional) {
        object = string (Required)
      }

      slack block "list" (Optional) {
        object = string (Required)
      }

      trendmicro block "list" (Optional) {
        object = string (Required)
      }

      veeva block "list" (Optional) {
        object = string (Required)
        document_type = string (Optional)
        include_all_versions = bool (Optional)
        include_renditions = bool (Optional)
        include_source_files = bool (Optional)
      }

      zendesk block "list" (Optional) {
        object = string (Required)
      }
    }
  }

  task block "set" (Required) {
    task_type = string (Required)
    destination_field = string (Optional)
    source_fields = ['list', 'string'] (Optional, Computed)
    task_properties = ['map', 'string'] (Optional)

    connector_operator block "list" (Optional) {
      amplitude = string (Optional)
      custom_connector = string (Optional)
      datadog = string (Optional)
      dynatrace = string (Optional)
      google_analytics = string (Optional)
      infor_nexus = string (Optional)
      marketo = string (Optional)
      s3 = string (Optional)
      salesforce = string (Optional)
      sapo_data = string (Optional)
      service_now = string (Optional)
      singular = string (Optional)
      slack = string (Optional)
      trendmicro = string (Optional)
      veeva = string (Optional)
      zendesk = string (Optional)
    }
  }

  trigger_config block "list" (Required) {
    trigger_type = string (Required)

    trigger_properties block "list" (Optional) {

      scheduled block "list" (Optional) {
        schedule_expression = string (Required)
        data_pull_mode = string (Optional)
        first_execution_from = string (Optional)
        schedule_end_time = string (Optional)
        schedule_offset = number (Optional)
        schedule_start_time = string (Optional)
        timezone = string (Optional)
      }
    }
  }
}
