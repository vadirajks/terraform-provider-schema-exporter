resource "aws_api_gateway_api_key" "name" {
  name = string (Required)
  arn = string (Computed)
  created_date = string (Computed)
  customer_id = string (Optional)
  description = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  last_updated_date = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  value = string (Optional, Computed)
}
