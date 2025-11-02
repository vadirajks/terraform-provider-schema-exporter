resource "aws_s3_bucket_cors_configuration" "name" {
  bucket = string (Required)
  expected_bucket_owner = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  cors_rule block "set" (Required) {
    allowed_methods = ['set', 'string'] (Required)
    allowed_origins = ['set', 'string'] (Required)
    allowed_headers = ['set', 'string'] (Optional)
    expose_headers = ['set', 'string'] (Optional)
    id = string (Optional)
    max_age_seconds = number (Optional)
  }
}
