data "aws_cloudfront_origin_access_identity" "name" {
  id = string (Required)
  arn = string (Computed)
  caller_reference = string (Computed)
  cloudfront_access_identity_path = string (Computed)
  comment = string (Computed)
  etag = string (Computed)
  iam_arn = string (Computed)
  s3_canonical_user_id = string (Computed)
}
