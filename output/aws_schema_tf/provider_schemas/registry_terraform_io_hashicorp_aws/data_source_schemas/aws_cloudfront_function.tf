data "aws_cloudfront_function" "name" {
  name = string (Required)
  stage = string (Required)
  arn = string (Computed)
  code = string (Computed)
  comment = string (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  key_value_store_associations = ['set', 'string'] (Computed)
  last_modified_time = string (Computed)
  runtime = string (Computed)
  status = string (Computed)
}
