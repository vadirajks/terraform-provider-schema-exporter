data "aws_api_gateway_sdk" "name" {
  rest_api_id = string (Required)
  sdk_type = string (Required)
  stage_name = string (Required)
  body = string (Computed)
  content_disposition = string (Computed)
  content_type = string (Computed)
  id = string (Optional, Computed)
  parameters = ['map', 'string'] (Optional)
  region = string (Optional, Computed)
}
