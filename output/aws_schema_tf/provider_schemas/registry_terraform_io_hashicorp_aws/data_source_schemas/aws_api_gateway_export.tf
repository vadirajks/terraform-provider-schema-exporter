data "aws_api_gateway_export" "name" {
  export_type = string (Required)
  rest_api_id = string (Required)
  stage_name = string (Required)
  accepts = string (Optional)
  body = string (Computed)
  content_disposition = string (Computed)
  content_type = string (Computed)
  id = string (Optional, Computed)
  parameters = ['map', 'string'] (Optional)
  region = string (Optional, Computed)
}
