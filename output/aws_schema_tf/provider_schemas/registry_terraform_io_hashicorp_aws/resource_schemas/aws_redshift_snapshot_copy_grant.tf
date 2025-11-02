resource "aws_redshift_snapshot_copy_grant" "name" {
  snapshot_copy_grant_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
