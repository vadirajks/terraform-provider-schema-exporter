resource "aws_cognito_user_pool_domain" "name" {
  domain = string (Required)
  user_pool_id = string (Required)
  aws_account_id = string (Computed)
  certificate_arn = string (Optional)
  cloudfront_distribution = string (Computed)
  cloudfront_distribution_arn = string (Computed)
  cloudfront_distribution_zone_id = string (Computed)
  id = string (Optional, Computed)
  managed_login_version = number (Optional, Computed)
  region = string (Optional, Computed)
  s3_bucket = string (Computed)
  version = string (Computed)
}
