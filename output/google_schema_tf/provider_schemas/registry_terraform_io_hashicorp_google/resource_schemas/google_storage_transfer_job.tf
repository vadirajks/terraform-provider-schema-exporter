resource "google_storage_transfer_job" "name" {
  description = string (Required)
  creation_time = string (Computed)
  deletion_time = string (Computed)
  id = string (Optional, Computed)
  last_modification_time = string (Computed)
  name = string (Optional, Computed)
  project = string (Optional, Computed)
  service_account = string (Optional)
  status = string (Optional)

  event_stream block "list" (Optional) {
    name = string (Required)
    event_stream_expiration_time = string (Optional)
    event_stream_start_time = string (Optional)
  }

  logging_config block "list" (Optional) {
    enable_on_prem_gcs_transfer_logs = bool (Optional)
    log_action_states = ['list', 'string'] (Optional)
    log_actions = ['list', 'string'] (Optional)
  }

  notification_config block "list" (Optional) {
    payload_format = string (Required)
    pubsub_topic = string (Required)
    event_types = ['set', 'string'] (Optional)
  }

  replication_spec block "list" (Optional) {

    gcs_data_sink block "list" (Optional) {
      bucket_name = string (Required)
      path = string (Optional)
    }

    gcs_data_source block "list" (Optional) {
      bucket_name = string (Required)
      path = string (Optional)
    }

    object_conditions block "list" (Optional) {
      exclude_prefixes = ['list', 'string'] (Optional)
      include_prefixes = ['list', 'string'] (Optional)
      last_modified_before = string (Optional)
      last_modified_since = string (Optional)
      max_time_elapsed_since_last_modification = string (Optional)
      min_time_elapsed_since_last_modification = string (Optional)
    }

    transfer_options block "list" (Optional) {
      delete_objects_from_source_after_transfer = bool (Optional)
      delete_objects_unique_in_sink = bool (Optional)
      overwrite_objects_already_existing_in_sink = bool (Optional)
      overwrite_when = string (Optional)

      metadata_options block "list" (Optional) {
        acl = string (Optional)
        gid = string (Optional)
        kms_key = string (Optional)
        mode = string (Optional)
        storage_class = string (Optional)
        symlink = string (Optional)
        temporary_hold = string (Optional)
        time_created = string (Optional)
        uid = string (Optional)
      }
    }
  }

  schedule block "list" (Optional) {
    repeat_interval = string (Optional)

    schedule_end_date block "list" (Optional) {
      day = number (Required)
      month = number (Required)
      year = number (Required)
    }

    schedule_start_date block "list" (Required) {
      day = number (Required)
      month = number (Required)
      year = number (Required)
    }

    start_time_of_day block "list" (Optional) {
      hours = number (Required)
      minutes = number (Required)
      nanos = number (Required)
      seconds = number (Required)
    }
  }

  transfer_spec block "list" (Optional) {
    sink_agent_pool_name = string (Optional, Computed)
    source_agent_pool_name = string (Optional, Computed)

    aws_s3_compatible_data_source block "list" (Optional) {
      bucket_name = string (Required)
      endpoint = string (Required)
      path = string (Optional)
      region = string (Optional)

      s3_metadata block "list" (Optional) {
        auth_method = string (Optional)
        list_api = string (Optional)
        protocol = string (Optional)
        request_model = string (Optional)
      }
    }

    aws_s3_data_source block "list" (Optional) {
      bucket_name = string (Required)
      cloudfront_domain = string (Optional)
      credentials_secret = string (Optional)
      managed_private_network = bool (Optional)
      path = string (Optional)
      role_arn = string (Optional)

      aws_access_key block "list" (Optional) {
        access_key_id = string (Required)
        secret_access_key = string (Required)
      }
    }

    azure_blob_storage_data_source block "list" (Optional) {
      container = string (Required)
      storage_account = string (Required)
      credentials_secret = string (Optional)
      path = string (Optional, Computed)

      azure_credentials block "list" (Optional) {
        sas_token = string (Required)
      }

      federated_identity_config block "list" (Optional) {
        client_id = string (Required)
        tenant_id = string (Required)
      }
    }

    gcs_data_sink block "list" (Optional) {
      bucket_name = string (Required)
      path = string (Optional)
    }

    gcs_data_source block "list" (Optional) {
      bucket_name = string (Required)
      path = string (Optional)
    }

    hdfs_data_source block "list" (Optional) {
      path = string (Required)
    }

    http_data_source block "list" (Optional) {
      list_url = string (Required)
    }

    object_conditions block "list" (Optional) {
      exclude_prefixes = ['list', 'string'] (Optional)
      include_prefixes = ['list', 'string'] (Optional)
      last_modified_before = string (Optional)
      last_modified_since = string (Optional)
      max_time_elapsed_since_last_modification = string (Optional)
      min_time_elapsed_since_last_modification = string (Optional)
    }

    posix_data_sink block "list" (Optional) {
      root_directory = string (Required)
    }

    posix_data_source block "list" (Optional) {
      root_directory = string (Required)
    }

    transfer_manifest block "list" (Optional) {
      location = string (Required)
    }

    transfer_options block "list" (Optional) {
      delete_objects_from_source_after_transfer = bool (Optional)
      delete_objects_unique_in_sink = bool (Optional)
      overwrite_objects_already_existing_in_sink = bool (Optional)
      overwrite_when = string (Optional)

      metadata_options block "list" (Optional) {
        acl = string (Optional)
        gid = string (Optional)
        kms_key = string (Optional)
        mode = string (Optional)
        storage_class = string (Optional)
        symlink = string (Optional)
        temporary_hold = string (Optional)
        time_created = string (Optional)
        uid = string (Optional)
      }
    }
  }
}
