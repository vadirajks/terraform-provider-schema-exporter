resource "aws_api_gateway_resource" "name" {
  parent_id = string (Required)
  path_part = string (Required)
  rest_api_id = string (Required)
  id = string (Optional, Computed)
  path = string (Computed)
  region = string (Optional, Computed)
}
