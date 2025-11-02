resource "aws_redshift_cluster_snapshot" "name" {
  cluster_identifier = string (Required)
  snapshot_identifier = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Computed)
  manual_snapshot_retention_period = number (Optional)
  owner_account = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
