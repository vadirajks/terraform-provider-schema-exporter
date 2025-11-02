resource "aws_api_gateway_documentation_part" "name" {
  properties = string (Required)
  rest_api_id = string (Required)
  documentation_part_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  location block "list" (Required) {
    type = string (Required)
    method = string (Optional)
    name = string (Optional)
    path = string (Optional)
    status_code = string (Optional)
  }
}
