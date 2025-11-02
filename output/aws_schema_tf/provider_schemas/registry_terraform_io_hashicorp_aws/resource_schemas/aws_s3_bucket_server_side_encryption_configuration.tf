resource "aws_s3_bucket_server_side_encryption_configuration" "name" {
  bucket = string (Required)
  expected_bucket_owner = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  rule block "set" (Required) {
    bucket_key_enabled = bool (Optional)

    apply_server_side_encryption_by_default block "list" (Optional) {
      sse_algorithm = string (Required)
      kms_master_key_id = string (Optional)
    }
  }
}
