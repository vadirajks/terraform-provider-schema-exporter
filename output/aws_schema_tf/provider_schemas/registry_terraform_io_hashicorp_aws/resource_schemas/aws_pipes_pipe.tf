resource "aws_pipes_pipe" "name" {
  role_arn = string (Required)
  source = string (Required)
  target = string (Required)
  arn = string (Computed)
  description = string (Optional)
  desired_state = string (Optional)
  enrichment = string (Optional)
  id = string (Optional, Computed)
  kms_key_identifier = string (Optional)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  enrichment_parameters block "list" (Optional) {
    input_template = string (Optional)

    http_parameters block "list" (Optional) {
      header_parameters = ['map', 'string'] (Optional)
      path_parameter_values = ['list', 'string'] (Optional)
      query_string_parameters = ['map', 'string'] (Optional)
    }
  }

  log_configuration block "list" (Optional) {
    level = string (Required)
    include_execution_data = ['set', 'string'] (Optional)

    cloudwatch_logs_log_destination block "list" (Optional) {
      log_group_arn = string (Required)
    }

    firehose_log_destination block "list" (Optional) {
      delivery_stream_arn = string (Required)
    }

    s3_log_destination block "list" (Optional) {
      bucket_name = string (Required)
      bucket_owner = string (Required)
      output_format = string (Optional)
      prefix = string (Optional)
    }
  }

  source_parameters block "list" (Optional) {

    activemq_broker_parameters block "list" (Optional) {
      queue_name = string (Required)
      batch_size = number (Optional, Computed)
      maximum_batching_window_in_seconds = number (Optional, Computed)

      credentials block "list" (Required) {
        basic_auth = string (Required)
      }
    }

    dynamodb_stream_parameters block "list" (Optional) {
      starting_position = string (Required)
      batch_size = number (Optional, Computed)
      maximum_batching_window_in_seconds = number (Optional, Computed)
      maximum_record_age_in_seconds = number (Optional, Computed)
      maximum_retry_attempts = number (Optional)
      on_partial_batch_item_failure = string (Optional)
      parallelization_factor = number (Optional, Computed)

      dead_letter_config block "list" (Optional) {
        arn = string (Optional)
      }
    }

    filter_criteria block "list" (Optional) {

      filter block "list" (Optional) {
        pattern = string (Required)
      }
    }

    kinesis_stream_parameters block "list" (Optional) {
      starting_position = string (Required)
      batch_size = number (Optional, Computed)
      maximum_batching_window_in_seconds = number (Optional, Computed)
      maximum_record_age_in_seconds = number (Optional, Computed)
      maximum_retry_attempts = number (Optional)
      on_partial_batch_item_failure = string (Optional)
      parallelization_factor = number (Optional, Computed)
      starting_position_timestamp = string (Optional)

      dead_letter_config block "list" (Optional) {
        arn = string (Optional)
      }
    }

    managed_streaming_kafka_parameters block "list" (Optional) {
      topic_name = string (Required)
      batch_size = number (Optional, Computed)
      consumer_group_id = string (Optional)
      maximum_batching_window_in_seconds = number (Optional, Computed)
      starting_position = string (Optional)

      credentials block "list" (Optional) {
        client_certificate_tls_auth = string (Optional)
        sasl_scram_512_auth = string (Optional)
      }
    }

    rabbitmq_broker_parameters block "list" (Optional) {
      queue_name = string (Required)
      batch_size = number (Optional, Computed)
      maximum_batching_window_in_seconds = number (Optional, Computed)
      virtual_host = string (Optional)

      credentials block "list" (Required) {
        basic_auth = string (Required)
      }
    }

    self_managed_kafka_parameters block "list" (Optional) {
      topic_name = string (Required)
      additional_bootstrap_servers = ['set', 'string'] (Optional)
      batch_size = number (Optional, Computed)
      consumer_group_id = string (Optional)
      maximum_batching_window_in_seconds = number (Optional, Computed)
      server_root_ca_certificate = string (Optional)
      starting_position = string (Optional)

      credentials block "list" (Optional) {
        basic_auth = string (Optional)
        client_certificate_tls_auth = string (Optional)
        sasl_scram_256_auth = string (Optional)
        sasl_scram_512_auth = string (Optional)
      }

      vpc block "list" (Optional) {
        security_groups = ['set', 'string'] (Optional)
        subnets = ['set', 'string'] (Optional)
      }
    }

    sqs_queue_parameters block "list" (Optional) {
      batch_size = number (Optional, Computed)
      maximum_batching_window_in_seconds = number (Optional, Computed)
    }
  }

  target_parameters block "list" (Optional) {
    input_template = string (Optional)

    batch_job_parameters block "list" (Optional) {
      job_definition = string (Required)
      job_name = string (Required)
      parameters = ['map', 'string'] (Optional)

      array_properties block "list" (Optional) {
        size = number (Optional)
      }

      container_overrides block "list" (Optional) {
        command = ['list', 'string'] (Optional)
        instance_type = string (Optional)

        environment block "list" (Optional) {
          name = string (Optional)
          value = string (Optional)
        }

        resource_requirement block "list" (Optional) {
          type = string (Required)
          value = string (Required)
        }
      }

      depends_on block "list" (Optional) {
        job_id = string (Optional)
        type = string (Optional)
      }

      retry_strategy block "list" (Optional) {
        attempts = number (Optional)
      }
    }

    cloudwatch_logs_parameters block "list" (Optional) {
      log_stream_name = string (Optional)
      timestamp = string (Optional)
    }

    ecs_task_parameters block "list" (Optional) {
      task_definition_arn = string (Required)
      enable_ecs_managed_tags = bool (Optional)
      enable_execute_command = bool (Optional)
      group = string (Optional)
      launch_type = string (Optional)
      platform_version = string (Optional)
      propagate_tags = string (Optional)
      reference_id = string (Optional)
      tags = ['map', 'string'] (Optional)
      task_count = number (Optional)

      capacity_provider_strategy block "list" (Optional) {
        capacity_provider = string (Required)
        base = number (Optional)
        weight = number (Optional)
      }

      network_configuration block "list" (Optional) {

        aws_vpc_configuration block "list" (Optional) {
          assign_public_ip = string (Optional)
          security_groups = ['set', 'string'] (Optional)
          subnets = ['set', 'string'] (Optional)
        }
      }

      overrides block "list" (Optional) {
        cpu = string (Optional)
        execution_role_arn = string (Optional)
        memory = string (Optional)
        task_role_arn = string (Optional)

        container_override block "list" (Optional) {
          command = ['list', 'string'] (Optional)
          cpu = number (Optional)
          memory = number (Optional)
          memory_reservation = number (Optional)
          name = string (Optional)

          environment block "list" (Optional) {
            name = string (Optional)
            value = string (Optional)
          }

          environment_file block "list" (Optional) {
            type = string (Required)
            value = string (Required)
          }

          resource_requirement block "list" (Optional) {
            type = string (Required)
            value = string (Required)
          }
        }

        ephemeral_storage block "list" (Optional) {
          size_in_gib = number (Required)
        }

        inference_accelerator_override block "list" (Optional) {
          device_name = string (Optional)
          device_type = string (Optional)
        }
      }

      placement_constraint block "list" (Optional) {
        expression = string (Optional)
        type = string (Optional)
      }

      placement_strategy block "list" (Optional) {
        field = string (Optional)
        type = string (Optional)
      }
    }

    eventbridge_event_bus_parameters block "list" (Optional) {
      detail_type = string (Optional)
      endpoint_id = string (Optional)
      resources = ['set', 'string'] (Optional)
      source = string (Optional)
      time = string (Optional)
    }

    http_parameters block "list" (Optional) {
      header_parameters = ['map', 'string'] (Optional)
      path_parameter_values = ['list', 'string'] (Optional)
      query_string_parameters = ['map', 'string'] (Optional)
    }

    kinesis_stream_parameters block "list" (Optional) {
      partition_key = string (Required)
    }

    lambda_function_parameters block "list" (Optional) {
      invocation_type = string (Required)
    }

    redshift_data_parameters block "list" (Optional) {
      database = string (Required)
      sqls = ['set', 'string'] (Required)
      db_user = string (Optional)
      secret_manager_arn = string (Optional)
      statement_name = string (Optional)
      with_event = bool (Optional)
    }

    sagemaker_pipeline_parameters block "list" (Optional) {

      pipeline_parameter block "list" (Optional) {
        name = string (Required)
        value = string (Required)
      }
    }

    sqs_queue_parameters block "list" (Optional) {
      message_deduplication_id = string (Optional)
      message_group_id = string (Optional)
    }

    step_function_state_machine_parameters block "list" (Optional) {
      invocation_type = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
