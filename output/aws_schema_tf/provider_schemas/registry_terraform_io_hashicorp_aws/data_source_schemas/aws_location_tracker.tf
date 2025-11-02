data "aws_location_tracker" "name" {
  tracker_name = string (Required)
  create_time = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Computed)
  position_filtering = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  tracker_arn = string (Computed)
  update_time = string (Computed)
}
