resource "aws_s3_account_public_access_block" "name" {
  account_id = string (Optional, Computed)
  block_public_acls = bool (Optional)
  block_public_policy = bool (Optional)
  id = string (Optional, Computed)
  ignore_public_acls = bool (Optional)
  restrict_public_buckets = bool (Optional)
}
