data "aws_location_geofence_collection" "name" {
  collection_name = string (Required)
  collection_arn = string (Computed)
  create_time = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  update_time = string (Computed)
}
