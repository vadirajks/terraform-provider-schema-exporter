resource "aws_cloudfront_origin_access_identity" "name" {
  arn = string (Computed)
  caller_reference = string (Computed)
  cloudfront_access_identity_path = string (Computed)
  comment = string (Optional)
  etag = string (Computed)
  iam_arn = string (Computed)
  id = string (Optional, Computed)
  s3_canonical_user_id = string (Computed)
}
