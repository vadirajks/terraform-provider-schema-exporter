resource "aws_redshift_snapshot_copy" "name" {
  cluster_identifier = string (Required)
  destination_region = string (Required)
  id = string (Computed)
  manual_snapshot_retention_period = number (Optional, Computed)
  region = string (Optional, Computed)
  retention_period = number (Optional, Computed)
  snapshot_copy_grant_name = string (Optional)
}
