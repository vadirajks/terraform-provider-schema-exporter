data "aws_s3_bucket" "name" {
  bucket = string (Required)
  arn = string (Computed)
  bucket_domain_name = string (Computed)
  bucket_region = string (Computed)
  bucket_regional_domain_name = string (Computed)
  hosted_zone_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  website_domain = string (Computed)
  website_endpoint = string (Computed)
}
