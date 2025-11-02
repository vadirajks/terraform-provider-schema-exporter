resource "aws_osis_pipeline" "name" {
  max_units = number (Required)
  min_units = number (Required)
  pipeline_configuration_body = string (Required)
  pipeline_name = string (Required)
  id = string (Computed)
  ingest_endpoint_urls = ['set', 'string'] (Computed)
  pipeline_arn = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  buffer_options block "list" (Optional) {
    persistent_buffer_enabled = bool (Required)
  }

  encryption_at_rest_options block "list" (Optional) {
    kms_key_arn = string (Required)
  }

  log_publishing_options block "list" (Optional) {
    is_logging_enabled = bool (Optional)

    cloudwatch_log_destination block "list" (Optional) {
      log_group = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_options block "list" (Optional) {
    subnet_ids = ['set', 'string'] (Required)
    security_group_ids = ['set', 'string'] (Optional)
    vpc_endpoint_management = string (Optional)
  }
}
