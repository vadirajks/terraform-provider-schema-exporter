resource "aws_location_map" "name" {
  map_name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  map_arn = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  update_time = string (Computed)

  configuration block "list" (Required) {
    style = string (Required)
  }
}
