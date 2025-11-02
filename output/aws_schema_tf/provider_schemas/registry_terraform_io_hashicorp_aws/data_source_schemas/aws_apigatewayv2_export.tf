data "aws_apigatewayv2_export" "name" {
  api_id = string (Required)
  output_type = string (Required)
  specification = string (Required)
  body = string (Computed)
  export_version = string (Optional)
  id = string (Optional, Computed)
  include_extensions = bool (Optional)
  region = string (Optional, Computed)
  stage_name = string (Optional)
}
