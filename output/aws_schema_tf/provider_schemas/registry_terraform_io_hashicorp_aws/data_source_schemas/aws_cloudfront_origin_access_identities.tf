data "aws_cloudfront_origin_access_identities" "name" {
  comments = ['set', 'string'] (Optional)
  iam_arns = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  ids = ['set', 'string'] (Computed)
  s3_canonical_user_ids = ['set', 'string'] (Computed)
}
