data "aws_route53_traffic_policy_document" "name" {
  id = string (Optional, Computed)
  json = string (Computed)
  record_type = string (Optional)
  start_endpoint = string (Optional)
  start_rule = string (Optional)
  version = string (Optional)

  endpoint block "set" (Optional) {
    id = string (Required)
    region = string (Optional)
    type = string (Optional)
    value = string (Optional)
  }

  rule block "set" (Optional) {
    id = string (Required)
    type = string (Optional)

    geo_proximity_location block "set" (Optional) {
      bias = string (Optional)
      endpoint_reference = string (Optional)
      evaluate_target_health = bool (Optional)
      health_check = string (Optional)
      latitude = string (Optional)
      longitude = string (Optional)
      region = string (Optional)
      rule_reference = string (Optional)
    }

    items block "set" (Optional) {
      endpoint_reference = string (Optional)
      health_check = string (Optional)
    }

    location block "set" (Optional) {
      continent = string (Optional)
      country = string (Optional)
      endpoint_reference = string (Optional)
      evaluate_target_health = bool (Optional)
      health_check = string (Optional)
      is_default = bool (Optional)
      rule_reference = string (Optional)
      subdivision = string (Optional)
    }

    primary block "list" (Optional) {
      endpoint_reference = string (Optional)
      evaluate_target_health = bool (Optional)
      health_check = string (Optional)
      rule_reference = string (Optional)
    }

    region block "set" (Optional) {
      endpoint_reference = string (Optional)
      evaluate_target_health = bool (Optional)
      health_check = string (Optional)
      region = string (Optional)
      rule_reference = string (Optional)
    }

    secondary block "list" (Optional) {
      endpoint_reference = string (Optional)
      evaluate_target_health = bool (Optional)
      health_check = string (Optional)
      rule_reference = string (Optional)
    }
  }
}
