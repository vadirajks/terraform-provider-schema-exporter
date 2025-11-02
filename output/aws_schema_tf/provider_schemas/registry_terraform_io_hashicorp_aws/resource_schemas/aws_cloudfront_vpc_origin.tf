resource "aws_cloudfront_vpc_origin" "name" {
  arn = string (Computed)
  etag = string (Computed)
  id = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_origin_endpoint_config block "list" (Optional) {
    arn = string (Required)
    http_port = number (Required)
    https_port = number (Required)
    name = string (Required)
    origin_protocol_policy = string (Required)

    origin_ssl_protocols block "list" (Optional) {
      items = ['set', 'string'] (Required)
      quantity = number (Required)
    }
  }
}
