data "aws_location_place_index" "name" {
  index_name = string (Required)
  create_time = string (Computed)
  data_source = string (Computed)
  data_source_configuration = ['list', ['object', {'intended_use': 'string'}]] (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  index_arn = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  update_time = string (Computed)
}
