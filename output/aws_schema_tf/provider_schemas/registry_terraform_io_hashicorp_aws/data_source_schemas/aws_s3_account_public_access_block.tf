data "aws_s3_account_public_access_block" "name" {
  account_id = string (Optional)
  block_public_acls = bool (Computed)
  block_public_policy = bool (Computed)
  id = string (Optional, Computed)
  ignore_public_acls = bool (Computed)
  restrict_public_buckets = bool (Computed)
}
