resource "google_eventarc_pipeline" "name" {
  location = string (Required)
  pipeline_id = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  crypto_key_name = string (Optional)
  display_name = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  destinations block "list" (Required) {
    message_bus = string (Optional)
    topic = string (Optional)
    workflow = string (Optional)

    authentication_config block "list" (Optional) {

      google_oidc block "list" (Optional) {
        service_account = string (Required)
        audience = string (Optional)
      }

      oauth_token block "list" (Optional) {
        service_account = string (Required)
        scope = string (Optional)
      }
    }

    http_endpoint block "list" (Optional) {
      uri = string (Required)
      message_binding_template = string (Optional)
    }

    network_config block "list" (Optional) {
      network_attachment = string (Optional)
    }

    output_payload_format block "list" (Optional) {

      avro block "list" (Optional) {
        schema_definition = string (Optional)
      }

      json block "list" (Optional) {
      }

      protobuf block "list" (Optional) {
        schema_definition = string (Optional)
      }
    }
  }

  input_payload_format block "list" (Optional) {

    avro block "list" (Optional) {
      schema_definition = string (Optional)
    }

    json block "list" (Optional) {
    }

    protobuf block "list" (Optional) {
      schema_definition = string (Optional)
    }
  }

  logging_config block "list" (Optional) {
    log_severity = string (Optional, Computed)
  }

  mediations block "list" (Optional) {

    transformation block "list" (Optional) {
      transformation_template = string (Optional)
    }
  }

  retry_policy block "list" (Optional) {
    max_attempts = number (Optional)
    max_retry_delay = string (Optional)
    min_retry_delay = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
