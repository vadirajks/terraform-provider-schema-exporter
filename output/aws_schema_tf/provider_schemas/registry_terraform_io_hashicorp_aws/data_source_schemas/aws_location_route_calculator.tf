data "aws_location_route_calculator" "name" {
  calculator_name = string (Required)
  calculator_arn = string (Computed)
  create_time = string (Computed)
  data_source = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  update_time = string (Computed)
}
