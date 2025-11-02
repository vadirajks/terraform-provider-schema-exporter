resource "aws_location_geofence_collection" "name" {
  collection_name = string (Required)
  collection_arn = string (Computed)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  kms_key_id = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
