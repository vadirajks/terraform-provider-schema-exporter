resource "aws_globalaccelerator_custom_routing_accelerator" "name" {
  name = string (Required)
  arn = string (Computed)
  dns_name = string (Computed)
  enabled = bool (Optional)
  hosted_zone_id = string (Computed)
  id = string (Optional, Computed)
  ip_address_type = string (Optional)
  ip_addresses = ['list', 'string'] (Optional)
  ip_sets = ['list', ['object', {'ip_addresses': ['list', 'string'], 'ip_family': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  attributes block "list" (Optional) {
    flow_logs_enabled = bool (Optional)
    flow_logs_s3_bucket = string (Optional)
    flow_logs_s3_prefix = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
