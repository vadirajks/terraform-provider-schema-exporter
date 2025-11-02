resource "aws_api_gateway_documentation_version" "name" {
  rest_api_id = string (Required)
  version = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
