resource "aws_route53_record" "name" {
  name = string (Required)
  type = string (Required)
  zone_id = string (Required)
  allow_overwrite = bool (Optional, Computed)
  fqdn = string (Computed)
  health_check_id = string (Optional)
  id = string (Optional, Computed)
  multivalue_answer_routing_policy = bool (Optional)
  records = ['set', 'string'] (Optional)
  set_identifier = string (Optional)
  ttl = number (Optional)

  alias block "list" (Optional) {
    evaluate_target_health = bool (Required)
    name = string (Required)
    zone_id = string (Required)
  }

  cidr_routing_policy block "list" (Optional) {
    collection_id = string (Required)
    location_name = string (Required)
  }

  failover_routing_policy block "list" (Optional) {
    type = string (Required)
  }

  geolocation_routing_policy block "list" (Optional) {
    continent = string (Optional)
    country = string (Optional)
    subdivision = string (Optional)
  }

  geoproximity_routing_policy block "list" (Optional) {
    aws_region = string (Optional)
    bias = number (Optional)
    local_zone_group = string (Optional)

    coordinates block "set" (Optional) {
      latitude = string (Required)
      longitude = string (Required)
    }
  }

  latency_routing_policy block "list" (Optional) {
    region = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  weighted_routing_policy block "list" (Optional) {
    weight = number (Required)
  }
}
