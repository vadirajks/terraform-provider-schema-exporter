resource "aws_s3_bucket_public_access_block" "name" {
  bucket = string (Required)
  block_public_acls = bool (Optional)
  block_public_policy = bool (Optional)
  id = string (Optional, Computed)
  ignore_public_acls = bool (Optional)
  region = string (Optional, Computed)
  restrict_public_buckets = bool (Optional)
  skip_destroy = bool (Optional)
}
