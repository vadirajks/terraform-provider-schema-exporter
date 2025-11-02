resource "aws_location_place_index" "name" {
  data_source = string (Required)
  index_name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  index_arn = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  update_time = string (Computed)

  data_source_configuration block "list" (Optional) {
    intended_use = string (Optional)
  }
}
