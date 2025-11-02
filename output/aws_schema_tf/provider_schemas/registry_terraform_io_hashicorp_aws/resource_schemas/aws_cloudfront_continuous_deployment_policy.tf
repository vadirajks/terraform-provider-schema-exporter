resource "aws_cloudfront_continuous_deployment_policy" "name" {
  enabled = bool (Required)
  arn = string (Computed)
  etag = string (Computed)
  id = string (Computed)
  last_modified_time = string (Computed)

  staging_distribution_dns_names block "list" (Optional) {
    quantity = number (Required)
    items = ['set', 'string'] (Optional)
  }

  traffic_config block "list" (Optional) {
    type = string (Required)

    single_header_config block "list" (Optional) {
      header = string (Required)
      value = string (Required)
    }

    single_weight_config block "list" (Optional) {
      weight = number (Required)

      session_stickiness_config block "list" (Optional) {
        idle_ttl = number (Required)
        maximum_ttl = number (Required)
      }
    }
  }
}
