resource "aws_redshift_snapshot_schedule" "name" {
  definitions = ['set', 'string'] (Required)
  arn = string (Computed)
  description = string (Optional)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  identifier = string (Optional, Computed)
  identifier_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
