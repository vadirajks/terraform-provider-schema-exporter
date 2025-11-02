resource "aws_cloudfront_function" "name" {
  code = string (Required)
  name = string (Required)
  runtime = string (Required)
  arn = string (Computed)
  comment = string (Optional)
  etag = string (Computed)
  id = string (Optional, Computed)
  key_value_store_associations = ['set', 'string'] (Optional)
  live_stage_etag = string (Computed)
  publish = bool (Optional)
  status = string (Computed)
}
