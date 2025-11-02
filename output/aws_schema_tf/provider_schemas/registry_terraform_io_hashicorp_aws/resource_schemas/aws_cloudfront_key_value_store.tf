resource "aws_cloudfront_key_value_store" "name" {
  name = string (Required)
  arn = string (Computed)
  comment = string (Optional)
  etag = string (Computed)
  id = string (Computed)
  last_modified_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
