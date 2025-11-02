resource "aws_location_tracker" "name" {
  tracker_name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  kms_key_id = string (Optional)
  position_filtering = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  tracker_arn = string (Computed)
  update_time = string (Computed)
}
