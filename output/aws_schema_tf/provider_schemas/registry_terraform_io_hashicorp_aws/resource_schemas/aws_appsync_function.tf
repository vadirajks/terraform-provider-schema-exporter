resource "aws_appsync_function" "name" {
  api_id = string (Required)
  data_source = string (Required)
  name = string (Required)
  arn = string (Computed)
  code = string (Optional)
  description = string (Optional)
  function_id = string (Computed)
  function_version = string (Optional, Computed)
  id = string (Optional, Computed)
  max_batch_size = number (Optional)
  region = string (Optional, Computed)
  request_mapping_template = string (Optional)
  response_mapping_template = string (Optional)

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
