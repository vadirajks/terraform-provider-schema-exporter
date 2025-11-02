resource "google_pubsub_topic" "name" {
  name = string (Required)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  kms_key_name = string (Optional)
  labels = ['map', 'string'] (Optional)
  message_retention_duration = string (Optional)
  project = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  terraform_labels = ['map', 'string'] (Computed)

  ingestion_data_source_settings block "list" (Optional) {

    aws_kinesis block "list" (Optional) {
      aws_role_arn = string (Required)
      consumer_arn = string (Required)
      gcp_service_account = string (Required)
      stream_arn = string (Required)
    }

    aws_msk block "list" (Optional) {
      aws_role_arn = string (Required)
      cluster_arn = string (Required)
      gcp_service_account = string (Required)
      topic = string (Required)
    }

    azure_event_hubs block "list" (Optional) {
      client_id = string (Optional)
      event_hub = string (Optional)
      gcp_service_account = string (Optional)
      namespace = string (Optional)
      resource_group = string (Optional)
      subscription_id = string (Optional)
      tenant_id = string (Optional)
    }

    cloud_storage block "list" (Optional) {
      bucket = string (Required)
      match_glob = string (Optional)
      minimum_object_create_time = string (Optional)

      avro_format block "list" (Optional) {
      }

      pubsub_avro_format block "list" (Optional) {
      }

      text_format block "list" (Optional) {
        delimiter = string (Optional)
      }
    }

    confluent_cloud block "list" (Optional) {
      bootstrap_server = string (Required)
      gcp_service_account = string (Required)
      identity_pool_id = string (Required)
      topic = string (Required)
      cluster_id = string (Optional)
    }

    platform_logs_settings block "list" (Optional) {
      severity = string (Optional)
    }
  }

  message_storage_policy block "list" (Optional) {
    allowed_persistence_regions = ['set', 'string'] (Required)
    enforce_in_transit = bool (Optional)
  }

  message_transforms block "list" (Optional) {
    disabled = bool (Optional)

    javascript_udf block "list" (Optional) {
      code = string (Required)
      function_name = string (Required)
    }
  }

  schema_settings block "list" (Optional) {
    schema = string (Required)
    encoding = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
