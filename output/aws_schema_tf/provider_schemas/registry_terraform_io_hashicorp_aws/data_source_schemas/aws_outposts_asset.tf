data "aws_outposts_asset" "name" {
  arn = string (Required)
  asset_id = string (Required)
  asset_type = string (Computed)
  host_id = string (Computed)
  id = string (Optional, Computed)
  rack_elevation = number (Computed)
  rack_id = string (Computed)
  region = string (Optional, Computed)
}
