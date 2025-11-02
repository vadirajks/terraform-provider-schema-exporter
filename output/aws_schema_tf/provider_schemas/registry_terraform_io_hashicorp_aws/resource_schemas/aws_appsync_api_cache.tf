resource "aws_appsync_api_cache" "name" {
  api_caching_behavior = string (Required)
  api_id = string (Required)
  ttl = number (Required)
  type = string (Required)
  at_rest_encryption_enabled = bool (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  transit_encryption_enabled = bool (Optional, Computed)
}
