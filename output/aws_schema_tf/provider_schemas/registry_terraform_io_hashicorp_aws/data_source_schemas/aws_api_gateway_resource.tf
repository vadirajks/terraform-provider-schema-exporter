data "aws_api_gateway_resource" "name" {
  path = string (Required)
  rest_api_id = string (Required)
  id = string (Optional, Computed)
  parent_id = string (Computed)
  path_part = string (Computed)
  region = string (Optional, Computed)
}
