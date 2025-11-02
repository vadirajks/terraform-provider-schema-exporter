resource "aws_cloudfront_key_group" "name" {
  items = ['set', 'string'] (Required)
  name = string (Required)
  comment = string (Optional)
  etag = string (Computed)
  id = string (Optional, Computed)
}
