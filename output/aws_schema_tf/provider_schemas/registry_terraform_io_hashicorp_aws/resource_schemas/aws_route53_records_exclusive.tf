resource "aws_route53_records_exclusive" "name" {
  zone_id = string (Required)

  resource_record_set block "set" (Optional) {
    name = string (Required)
    failover = string (Optional)
    health_check_id = string (Optional)
    multi_value_answer = bool (Optional)
    region = string (Optional)
    set_identifier = string (Optional)
    traffic_policy_instance_id = string (Optional)
    ttl = number (Optional)
    type = string (Optional)
    weight = number (Optional)

    alias_target block "list" (Optional) {
      dns_name = string (Required)
      evaluate_target_health = bool (Required)
      hosted_zone_id = string (Required)
    }

    cidr_routing_config block "list" (Optional) {
      collection_id = string (Required)
      location_name = string (Required)
    }

    geolocation block "list" (Optional) {
      continent_code = string (Optional)
      country_code = string (Optional)
      subdivision_code = string (Optional)
    }

    geoproximity_location block "list" (Optional) {
      aws_region = string (Optional)
      bias = number (Optional)
      local_zone_group = string (Optional)

      coordinates block "list" (Optional) {
        latitude = string (Required)
        longitude = string (Required)
      }
    }

    resource_records block "list" (Optional) {
      value = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
