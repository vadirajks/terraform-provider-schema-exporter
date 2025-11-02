resource "aws_api_gateway_rest_api_put" "name" {
  body = string (Required)
  rest_api_id = string (Required)
  fail_on_warnings = bool (Optional, Computed)
  parameters = ['map', 'string'] (Optional)
  region = string (Optional, Computed)
  triggers = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
