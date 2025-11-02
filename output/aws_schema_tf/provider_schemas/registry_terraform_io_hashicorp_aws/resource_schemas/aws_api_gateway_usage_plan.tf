resource "aws_api_gateway_usage_plan" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  product_code = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  api_stages block "set" (Optional) {
    api_id = string (Required)
    stage = string (Required)

    throttle block "set" (Optional) {
      path = string (Required)
      burst_limit = number (Optional)
      rate_limit = number (Optional)
    }
  }

  quota_settings block "list" (Optional) {
    limit = number (Required)
    period = string (Required)
    offset = number (Optional)
  }

  throttle_settings block "list" (Optional) {
    burst_limit = number (Optional)
    rate_limit = number (Optional)
  }
}
