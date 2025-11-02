resource "aws_lambda_event_source_mapping" "name" {
  function_name = string (Required)
  arn = string (Computed)
  batch_size = number (Optional)
  bisect_batch_on_function_error = bool (Optional)
  enabled = bool (Optional)
  event_source_arn = string (Optional)
  function_arn = string (Computed)
  function_response_types = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  kms_key_arn = string (Optional)
  last_modified = string (Computed)
  last_processing_result = string (Computed)
  maximum_batching_window_in_seconds = number (Optional)
  maximum_record_age_in_seconds = number (Optional, Computed)
  maximum_retry_attempts = number (Optional, Computed)
  parallelization_factor = number (Optional, Computed)
  queues = ['list', 'string'] (Optional)
  region = string (Optional, Computed)
  starting_position = string (Optional)
  starting_position_timestamp = string (Optional)
  state = string (Computed)
  state_transition_reason = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  topics = ['set', 'string'] (Optional)
  tumbling_window_in_seconds = number (Optional)
  uuid = string (Computed)

  amazon_managed_kafka_event_source_config block "list" (Optional) {
    consumer_group_id = string (Optional, Computed)

    schema_registry_config block "list" (Optional) {
      event_record_format = string (Optional)
      schema_registry_uri = string (Optional)

      access_config block "set" (Optional) {
        type = string (Optional)
        uri = string (Optional)
      }

      schema_validation_config block "set" (Optional) {
        attribute = string (Optional)
      }
    }
  }

  destination_config block "list" (Optional) {

    on_failure block "list" (Optional) {
      destination_arn = string (Required)
    }
  }

  document_db_event_source_config block "list" (Optional) {
    database_name = string (Required)
    collection_name = string (Optional)
    full_document = string (Optional)
  }

  filter_criteria block "list" (Optional) {

    filter block "set" (Optional) {
      pattern = string (Optional)
    }
  }

  metrics_config block "list" (Optional) {
    metrics = ['set', 'string'] (Required)
  }

  provisioned_poller_config block "list" (Optional) {
    maximum_pollers = number (Optional, Computed)
    minimum_pollers = number (Optional, Computed)
  }

  scaling_config block "list" (Optional) {
    maximum_concurrency = number (Optional)
  }

  self_managed_event_source block "list" (Optional) {
    endpoints = ['map', 'string'] (Required)
  }

  self_managed_kafka_event_source_config block "list" (Optional) {
    consumer_group_id = string (Optional, Computed)

    schema_registry_config block "list" (Optional) {
      event_record_format = string (Optional)
      schema_registry_uri = string (Optional)

      access_config block "set" (Optional) {
        type = string (Optional)
        uri = string (Optional)
      }

      schema_validation_config block "set" (Optional) {
        attribute = string (Optional)
      }
    }
  }

  source_access_configuration block "set" (Optional) {
    type = string (Required)
    uri = string (Required)
  }
}
