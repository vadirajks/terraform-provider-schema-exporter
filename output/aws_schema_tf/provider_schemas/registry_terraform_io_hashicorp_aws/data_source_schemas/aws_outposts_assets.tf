data "aws_outposts_assets" "name" {
  arn = string (Required)
  asset_ids = ['list', 'string'] (Computed)
  host_id_filter = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status_id_filter = ['set', 'string'] (Optional)
}
