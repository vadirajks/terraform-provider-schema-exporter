resource "aws_redshift_logging" "name" {
  cluster_identifier = string (Required)
  bucket_name = string (Optional)
  id = string (Computed)
  log_destination_type = string (Optional)
  log_exports = ['set', 'string'] (Optional)
  region = string (Optional, Computed)
  s3_key_prefix = string (Optional)
}
