resource "aws_iot_authorizer" "name" {
  authorizer_function_arn = string (Required)
  name = string (Required)
  arn = string (Computed)
  enable_caching_for_http = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  signing_disabled = bool (Optional)
  status = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  token_key_name = string (Optional)
  token_signing_public_keys = ['map', 'string'] (Optional)
}
