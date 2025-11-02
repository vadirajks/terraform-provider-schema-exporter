resource "aws_cloudfront_origin_access_control" "name" {
  name = string (Required)
  origin_access_control_origin_type = string (Required)
  signing_behavior = string (Required)
  signing_protocol = string (Required)
  arn = string (Computed)
  description = string (Optional)
  etag = string (Computed)
  id = string (Optional, Computed)
}
