resource "aws_redshift_snapshot_schedule_association" "name" {
  cluster_identifier = string (Required)
  schedule_identifier = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
