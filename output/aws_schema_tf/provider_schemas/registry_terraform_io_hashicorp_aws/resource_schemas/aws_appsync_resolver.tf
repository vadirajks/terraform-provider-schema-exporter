resource "aws_appsync_resolver" "name" {
  api_id = string (Required)
  field = string (Required)
  type = string (Required)
  arn = string (Computed)
  code = string (Optional)
  data_source = string (Optional)
  id = string (Optional, Computed)
  kind = string (Optional)
  max_batch_size = number (Optional)
  region = string (Optional, Computed)
  request_template = string (Optional)
  response_template = string (Optional)

  caching_config block "list" (Optional) {
    caching_keys = ['set', 'string'] (Optional)
    ttl = number (Optional)
  }

  pipeline_config block "list" (Optional) {
    functions = ['list', 'string'] (Optional)
  }

  runtime block "list" (Optional) {
    name = string (Required)
    runtime_version = string (Required)
  }

  sync_config block "list" (Optional) {
    conflict_detection = string (Optional)
    conflict_handler = string (Optional)

    lambda_conflict_handler_config block "list" (Optional) {
      lambda_conflict_handler_arn = string (Optional)
    }
  }
}
