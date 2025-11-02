data "aws_api_gateway_vpc_link" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  status_message = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  target_arns = ['set', 'string'] (Computed)
}
