resource "google_pubsub_subscription" "name" {
  name = string (Required)
  topic = string (Required)
  ack_deadline_seconds = number (Optional, Computed)
  effective_labels = ['map', 'string'] (Computed)
  enable_exactly_once_delivery = bool (Optional)
  enable_message_ordering = bool (Optional)
  filter = string (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  message_retention_duration = string (Optional)
  project = string (Optional, Computed)
  retain_acked_messages = bool (Optional)
  tags = ['map', 'string'] (Optional)
  terraform_labels = ['map', 'string'] (Computed)

  bigquery_config block "list" (Optional) {
    table = string (Required)
    drop_unknown_fields = bool (Optional)
    service_account_email = string (Optional)
    use_table_schema = bool (Optional)
    use_topic_schema = bool (Optional)
    write_metadata = bool (Optional)
  }

  cloud_storage_config block "list" (Optional) {
    bucket = string (Required)
    filename_datetime_format = string (Optional)
    filename_prefix = string (Optional)
    filename_suffix = string (Optional)
    max_bytes = number (Optional)
    max_duration = string (Optional)
    max_messages = number (Optional)
    service_account_email = string (Optional)
    state = string (Computed)

    avro_config block "list" (Optional) {
      use_topic_schema = bool (Optional)
      write_metadata = bool (Optional)
    }
  }

  dead_letter_policy block "list" (Optional) {
    dead_letter_topic = string (Optional)
    max_delivery_attempts = number (Optional)
  }

  expiration_policy block "list" (Optional) {
    ttl = string (Required)
  }

  message_transforms block "list" (Optional) {
    disabled = bool (Optional)

    javascript_udf block "list" (Optional) {
      code = string (Required)
      function_name = string (Required)
    }
  }

  push_config block "list" (Optional) {
    push_endpoint = string (Required)
    attributes = ['map', 'string'] (Optional)

    no_wrapper block "list" (Optional) {
      write_metadata = bool (Required)
    }

    oidc_token block "list" (Optional) {
      service_account_email = string (Required)
      audience = string (Optional)
    }
  }

  retry_policy block "list" (Optional) {
    maximum_backoff = string (Optional, Computed)
    minimum_backoff = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
