data "aws_api_gateway_api_key" "name" {
  id = string (Required)
  arn = string (Computed)
  created_date = string (Computed)
  customer_id = string (Computed)
  description = string (Computed)
  enabled = bool (Computed)
  last_updated_date = string (Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  value = string (Computed)
}
