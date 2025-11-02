resource "aws_kinesis_firehose_delivery_stream" "name" {
  destination = string (Required)
  name = string (Required)
  arn = string (Optional, Computed)
  destination_id = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version_id = string (Optional, Computed)

  elasticsearch_configuration block "list" (Optional) {
    index_name = string (Required)
    role_arn = string (Required)
    buffering_interval = number (Optional)
    buffering_size = number (Optional)
    cluster_endpoint = string (Optional)
    domain_arn = string (Optional)
    index_rotation_period = string (Optional)
    retry_duration = number (Optional)
    s3_backup_mode = string (Optional)
    type_name = string (Optional)

    cloudwatch_logging_options block "list" (Optional) {
      enabled = bool (Optional)
      log_group_name = string (Optional)
      log_stream_name = string (Optional)
    }

    processing_configuration block "list" (Optional) {
      enabled = bool (Optional)

      processors block "list" (Optional) {
        type = string (Required)

        parameters block "set" (Optional) {
          parameter_name = string (Required)
          parameter_value = string (Required)
        }
      }
    }

    s3_configuration block "list" (Required) {
      bucket_arn = string (Required)
      role_arn = string (Required)
      buffering_interval = number (Optional)
      buffering_size = number (Optional)
      compression_format = string (Optional)
      error_output_prefix = string (Optional)
      kms_key_arn = string (Optional)
      prefix = string (Optional)

      cloudwatch_logging_options block "list" (Optional) {
        enabled = bool (Optional)
        log_group_name = string (Optional)
        log_stream_name = string (Optional)
      }
    }

    vpc_config block "list" (Optional) {
      role_arn = string (Required)
      security_group_ids = ['set', 'string'] (Required)
      subnet_ids = ['set', 'string'] (Required)
      vpc_id = string (Computed)
    }
  }

  extended_s3_configuration block "list" (Optional) {
    bucket_arn = string (Required)
    role_arn = string (Required)
    buffering_interval = number (Optional)
    buffering_size = number (Optional)
    compression_format = string (Optional)
    custom_time_zone = string (Optional)
    error_output_prefix = string (Optional)
    file_extension = string (Optional)
    kms_key_arn = string (Optional)
    prefix = string (Optional)
    s3_backup_mode = string (Optional)

    cloudwatch_logging_options block "list" (Optional) {
      enabled = bool (Optional)
      log_group_name = string (Optional)
      log_stream_name = string (Optional)
    }

    data_format_conversion_configuration block "list" (Optional) {
      enabled = bool (Optional)

      input_format_configuration block "list" (Required) {

        deserializer block "list" (Required) {

          hive_json_ser_de block "list" (Optional) {
            timestamp_formats = ['list', 'string'] (Optional)
          }

          open_x_json_ser_de block "list" (Optional) {
            case_insensitive = bool (Optional)
            column_to_json_key_mappings = ['map', 'string'] (Optional)
            convert_dots_in_json_keys_to_underscores = bool (Optional)
          }
        }
      }

      output_format_configuration block "list" (Required) {

        serializer block "list" (Required) {

          orc_ser_de block "list" (Optional) {
            block_size_bytes = number (Optional)
            bloom_filter_columns = ['list', 'string'] (Optional)
            bloom_filter_false_positive_probability = number (Optional)
            compression = string (Optional)
            dictionary_key_threshold = number (Optional)
            enable_padding = bool (Optional)
            format_version = string (Optional)
            padding_tolerance = number (Optional)
            row_index_stride = number (Optional)
            stripe_size_bytes = number (Optional)
          }

          parquet_ser_de block "list" (Optional) {
            block_size_bytes = number (Optional)
            compression = string (Optional)
            enable_dictionary_compression = bool (Optional)
            max_padding_bytes = number (Optional)
            page_size_bytes = number (Optional)
            writer_version = string (Optional)
          }
        }
      }

      schema_configuration block "list" (Required) {
        database_name = string (Required)
        role_arn = string (Required)
        table_name = string (Required)
        catalog_id = string (Optional, Computed)
        region = string (Optional, Computed)
        version_id = string (Optional)
      }
    }

    dynamic_partitioning_configuration block "list" (Optional) {
      enabled = bool (Optional)
      retry_duration = number (Optional)
    }

    processing_configuration block "list" (Optional) {
      enabled = bool (Optional)

      processors block "list" (Optional) {
        type = string (Required)

        parameters block "set" (Optional) {
          parameter_name = string (Required)
          parameter_value = string (Required)
        }
      }
    }

    s3_backup_configuration block "list" (Optional) {
      bucket_arn = string (Required)
      role_arn = string (Required)
      buffering_interval = number (Optional)
      buffering_size = number (Optional)
      compression_format = string (Optional)
      error_output_prefix = string (Optional)
      kms_key_arn = string (Optional)
      prefix = string (Optional)

      cloudwatch_logging_options block "list" (Optional) {
        enabled = bool (Optional)
        log_group_name = string (Optional)
        log_stream_name = string (Optional)
      }
    }
  }

  http_endpoint_configuration block "list" (Optional) {
    url = string (Required)
    access_key = string (Optional)
    buffering_interval = number (Optional)
    buffering_size = number (Optional)
    name = string (Optional)
    retry_duration = number (Optional)
    role_arn = string (Optional)
    s3_backup_mode = string (Optional)

    cloudwatch_logging_options block "list" (Optional) {
      enabled = bool (Optional)
      log_group_name = string (Optional)
      log_stream_name = string (Optional)
    }

    processing_configuration block "list" (Optional) {
      enabled = bool (Optional)

      processors block "list" (Optional) {
        type = string (Required)

        parameters block "set" (Optional) {
          parameter_name = string (Required)
          parameter_value = string (Required)
        }
      }
    }

    request_configuration block "list" (Optional) {
      content_encoding = string (Optional)

      common_attributes block "list" (Optional) {
        name = string (Required)
        value = string (Required)
      }
    }

    s3_configuration block "list" (Required) {
      bucket_arn = string (Required)
      role_arn = string (Required)
      buffering_interval = number (Optional)
      buffering_size = number (Optional)
      compression_format = string (Optional)
      error_output_prefix = string (Optional)
      kms_key_arn = string (Optional)
      prefix = string (Optional)

      cloudwatch_logging_options block "list" (Optional) {
        enabled = bool (Optional)
        log_group_name = string (Optional)
        log_stream_name = string (Optional)
      }
    }

    secrets_manager_configuration block "list" (Optional) {
      enabled = bool (Optional, Computed)
      role_arn = string (Optional)
      secret_arn = string (Optional)
    }
  }

  iceberg_configuration block "list" (Optional) {
    catalog_arn = string (Required)
    role_arn = string (Required)
    append_only = bool (Optional, Computed)
    buffering_interval = number (Optional)
    buffering_size = number (Optional)
    retry_duration = number (Optional)
    s3_backup_mode = string (Optional)

    cloudwatch_logging_options block "list" (Optional) {
      enabled = bool (Optional)
      log_group_name = string (Optional)
      log_stream_name = string (Optional)
    }

    destination_table_configuration block "list" (Optional) {
      database_name = string (Required)
      table_name = string (Required)
      s3_error_output_prefix = string (Optional)
      unique_keys = ['list', 'string'] (Optional)
    }

    processing_configuration block "list" (Optional) {
      enabled = bool (Optional)

      processors block "list" (Optional) {
        type = string (Required)

        parameters block "set" (Optional) {
          parameter_name = string (Required)
          parameter_value = string (Required)
        }
      }
    }

    s3_configuration block "list" (Required) {
      bucket_arn = string (Required)
      role_arn = string (Required)
      buffering_interval = number (Optional)
      buffering_size = number (Optional)
      compression_format = string (Optional)
      error_output_prefix = string (Optional)
      kms_key_arn = string (Optional)
      prefix = string (Optional)

      cloudwatch_logging_options block "list" (Optional) {
        enabled = bool (Optional)
        log_group_name = string (Optional)
        log_stream_name = string (Optional)
      }
    }
  }

  kinesis_source_configuration block "list" (Optional) {
    kinesis_stream_arn = string (Required)
    role_arn = string (Required)
  }

  msk_source_configuration block "list" (Optional) {
    msk_cluster_arn = string (Required)
    topic_name = string (Required)
    read_from_timestamp = string (Optional)

    authentication_configuration block "list" (Required) {
      connectivity = string (Required)
      role_arn = string (Required)
    }
  }

  opensearch_configuration block "list" (Optional) {
    index_name = string (Required)
    role_arn = string (Required)
    buffering_interval = number (Optional)
    buffering_size = number (Optional)
    cluster_endpoint = string (Optional)
    domain_arn = string (Optional)
    index_rotation_period = string (Optional)
    retry_duration = number (Optional)
    s3_backup_mode = string (Optional)
    type_name = string (Optional)

    cloudwatch_logging_options block "list" (Optional) {
      enabled = bool (Optional)
      log_group_name = string (Optional)
      log_stream_name = string (Optional)
    }

    document_id_options block "list" (Optional) {
      default_document_id_format = string (Required)
    }

    processing_configuration block "list" (Optional) {
      enabled = bool (Optional)

      processors block "list" (Optional) {
        type = string (Required)

        parameters block "set" (Optional) {
          parameter_name = string (Required)
          parameter_value = string (Required)
        }
      }
    }

    s3_configuration block "list" (Required) {
      bucket_arn = string (Required)
      role_arn = string (Required)
      buffering_interval = number (Optional)
      buffering_size = number (Optional)
      compression_format = string (Optional)
      error_output_prefix = string (Optional)
      kms_key_arn = string (Optional)
      prefix = string (Optional)

      cloudwatch_logging_options block "list" (Optional) {
        enabled = bool (Optional)
        log_group_name = string (Optional)
        log_stream_name = string (Optional)
      }
    }

    vpc_config block "list" (Optional) {
      role_arn = string (Required)
      security_group_ids = ['set', 'string'] (Required)
      subnet_ids = ['set', 'string'] (Required)
      vpc_id = string (Computed)
    }
  }

  opensearchserverless_configuration block "list" (Optional) {
    collection_endpoint = string (Required)
    index_name = string (Required)
    role_arn = string (Required)
    buffering_interval = number (Optional)
    buffering_size = number (Optional)
    retry_duration = number (Optional)
    s3_backup_mode = string (Optional)

    cloudwatch_logging_options block "list" (Optional) {
      enabled = bool (Optional)
      log_group_name = string (Optional)
      log_stream_name = string (Optional)
    }

    processing_configuration block "list" (Optional) {
      enabled = bool (Optional)

      processors block "list" (Optional) {
        type = string (Required)

        parameters block "set" (Optional) {
          parameter_name = string (Required)
          parameter_value = string (Required)
        }
      }
    }

    s3_configuration block "list" (Required) {
      bucket_arn = string (Required)
      role_arn = string (Required)
      buffering_interval = number (Optional)
      buffering_size = number (Optional)
      compression_format = string (Optional)
      error_output_prefix = string (Optional)
      kms_key_arn = string (Optional)
      prefix = string (Optional)

      cloudwatch_logging_options block "list" (Optional) {
        enabled = bool (Optional)
        log_group_name = string (Optional)
        log_stream_name = string (Optional)
      }
    }

    vpc_config block "list" (Optional) {
      role_arn = string (Required)
      security_group_ids = ['set', 'string'] (Required)
      subnet_ids = ['set', 'string'] (Required)
      vpc_id = string (Computed)
    }
  }

  redshift_configuration block "list" (Optional) {
    cluster_jdbcurl = string (Required)
    data_table_name = string (Required)
    role_arn = string (Required)
    copy_options = string (Optional)
    data_table_columns = string (Optional)
    password = string (Optional)
    retry_duration = number (Optional)
    s3_backup_mode = string (Optional)
    username = string (Optional)

    cloudwatch_logging_options block "list" (Optional) {
      enabled = bool (Optional)
      log_group_name = string (Optional)
      log_stream_name = string (Optional)
    }

    processing_configuration block "list" (Optional) {
      enabled = bool (Optional)

      processors block "list" (Optional) {
        type = string (Required)

        parameters block "set" (Optional) {
          parameter_name = string (Required)
          parameter_value = string (Required)
        }
      }
    }

    s3_backup_configuration block "list" (Optional) {
      bucket_arn = string (Required)
      role_arn = string (Required)
      buffering_interval = number (Optional)
      buffering_size = number (Optional)
      compression_format = string (Optional)
      error_output_prefix = string (Optional)
      kms_key_arn = string (Optional)
      prefix = string (Optional)

      cloudwatch_logging_options block "list" (Optional) {
        enabled = bool (Optional)
        log_group_name = string (Optional)
        log_stream_name = string (Optional)
      }
    }

    s3_configuration block "list" (Required) {
      bucket_arn = string (Required)
      role_arn = string (Required)
      buffering_interval = number (Optional)
      buffering_size = number (Optional)
      compression_format = string (Optional)
      error_output_prefix = string (Optional)
      kms_key_arn = string (Optional)
      prefix = string (Optional)

      cloudwatch_logging_options block "list" (Optional) {
        enabled = bool (Optional)
        log_group_name = string (Optional)
        log_stream_name = string (Optional)
      }
    }

    secrets_manager_configuration block "list" (Optional) {
      enabled = bool (Optional, Computed)
      role_arn = string (Optional)
      secret_arn = string (Optional)
    }
  }

  server_side_encryption block "list" (Optional) {
    enabled = bool (Optional)
    key_arn = string (Optional)
    key_type = string (Optional)
  }

  snowflake_configuration block "list" (Optional) {
    account_url = string (Required)
    database = string (Required)
    role_arn = string (Required)
    schema = string (Required)
    table = string (Required)
    buffering_interval = number (Optional)
    buffering_size = number (Optional)
    content_column_name = string (Optional)
    data_loading_option = string (Optional)
    key_passphrase = string (Optional)
    metadata_column_name = string (Optional)
    private_key = string (Optional)
    retry_duration = number (Optional)
    s3_backup_mode = string (Optional)
    user = string (Optional)

    cloudwatch_logging_options block "list" (Optional) {
      enabled = bool (Optional)
      log_group_name = string (Optional)
      log_stream_name = string (Optional)
    }

    processing_configuration block "list" (Optional) {
      enabled = bool (Optional)

      processors block "list" (Optional) {
        type = string (Required)

        parameters block "set" (Optional) {
          parameter_name = string (Required)
          parameter_value = string (Required)
        }
      }
    }

    s3_configuration block "list" (Required) {
      bucket_arn = string (Required)
      role_arn = string (Required)
      buffering_interval = number (Optional)
      buffering_size = number (Optional)
      compression_format = string (Optional)
      error_output_prefix = string (Optional)
      kms_key_arn = string (Optional)
      prefix = string (Optional)

      cloudwatch_logging_options block "list" (Optional) {
        enabled = bool (Optional)
        log_group_name = string (Optional)
        log_stream_name = string (Optional)
      }
    }

    secrets_manager_configuration block "list" (Optional) {
      enabled = bool (Optional, Computed)
      role_arn = string (Optional)
      secret_arn = string (Optional)
    }

    snowflake_role_configuration block "list" (Optional) {
      enabled = bool (Optional)
      snowflake_role = string (Optional)
    }

    snowflake_vpc_configuration block "list" (Optional) {
      private_link_vpce_id = string (Required)
    }
  }

  splunk_configuration block "list" (Optional) {
    hec_endpoint = string (Required)
    buffering_interval = number (Optional)
    buffering_size = number (Optional)
    hec_acknowledgment_timeout = number (Optional)
    hec_endpoint_type = string (Optional)
    hec_token = string (Optional)
    retry_duration = number (Optional)
    s3_backup_mode = string (Optional)

    cloudwatch_logging_options block "list" (Optional) {
      enabled = bool (Optional)
      log_group_name = string (Optional)
      log_stream_name = string (Optional)
    }

    processing_configuration block "list" (Optional) {
      enabled = bool (Optional)

      processors block "list" (Optional) {
        type = string (Required)

        parameters block "set" (Optional) {
          parameter_name = string (Required)
          parameter_value = string (Required)
        }
      }
    }

    s3_configuration block "list" (Required) {
      bucket_arn = string (Required)
      role_arn = string (Required)
      buffering_interval = number (Optional)
      buffering_size = number (Optional)
      compression_format = string (Optional)
      error_output_prefix = string (Optional)
      kms_key_arn = string (Optional)
      prefix = string (Optional)

      cloudwatch_logging_options block "list" (Optional) {
        enabled = bool (Optional)
        log_group_name = string (Optional)
        log_stream_name = string (Optional)
      }
    }

    secrets_manager_configuration block "list" (Optional) {
      enabled = bool (Optional, Computed)
      role_arn = string (Optional)
      secret_arn = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
