data "aws_location_map" "name" {
  map_name = string (Required)
  configuration = ['list', ['object', {'style': 'string'}]] (Computed)
  create_time = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  map_arn = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  update_time = string (Computed)
}
