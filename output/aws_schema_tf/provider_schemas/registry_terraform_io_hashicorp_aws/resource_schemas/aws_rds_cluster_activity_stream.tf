resource "aws_rds_cluster_activity_stream" "name" {
  kms_key_id = string (Required)
  mode = string (Required)
  resource_arn = string (Required)
  engine_native_audit_fields_included = bool (Optional)
  id = string (Optional, Computed)
  kinesis_stream_name = string (Computed)
  region = string (Optional, Computed)
}
