resource "aws_api_gateway_rest_api" "name" {
  name = string (Required)
  api_key_source = string (Optional, Computed)
  arn = string (Computed)
  binary_media_types = ['list', 'string'] (Optional, Computed)
  body = string (Optional)
  created_date = string (Computed)
  description = string (Optional, Computed)
  disable_execute_api_endpoint = bool (Optional, Computed)
  execution_arn = string (Computed)
  fail_on_warnings = bool (Optional)
  id = string (Optional, Computed)
  minimum_compression_size = string (Optional, Computed)
  parameters = ['map', 'string'] (Optional)
  policy = string (Optional, Computed)
  put_rest_api_mode = string (Optional)
  region = string (Optional, Computed)
  root_resource_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  endpoint_configuration block "list" (Optional) {
    types = ['list', 'string'] (Required)
    ip_address_type = string (Optional, Computed)
    vpc_endpoint_ids = ['set', 'string'] (Optional, Computed)
  }
}
