resource "aws_apigatewayv2_model" "name" {
  api_id = string (Required)
  content_type = string (Required)
  name = string (Required)
  schema = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
