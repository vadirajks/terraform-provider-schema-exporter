resource "aws_lb_trust_store_revocation" "name" {
  revocations_s3_bucket = string (Required)
  revocations_s3_key = string (Required)
  trust_store_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  revocation_id = number (Computed)
  revocations_s3_object_version = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
