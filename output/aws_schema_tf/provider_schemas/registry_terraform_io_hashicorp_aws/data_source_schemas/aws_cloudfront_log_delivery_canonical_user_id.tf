data "aws_cloudfront_log_delivery_canonical_user_id" "name" {
  id = string (Optional, Computed)
  region = string (Optional)
}
