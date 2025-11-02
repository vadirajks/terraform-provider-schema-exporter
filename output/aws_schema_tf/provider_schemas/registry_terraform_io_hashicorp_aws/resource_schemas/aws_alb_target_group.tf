resource "aws_alb_target_group" "name" {
  arn = string (Computed)
  arn_suffix = string (Computed)
  connection_termination = bool (Optional, Computed)
  deregistration_delay = string (Optional)
  id = string (Optional, Computed)
  ip_address_type = string (Optional, Computed)
  lambda_multi_value_headers_enabled = bool (Optional)
  load_balancer_arns = ['set', 'string'] (Computed)
  load_balancing_algorithm_type = string (Optional, Computed)
  load_balancing_anomaly_mitigation = string (Optional, Computed)
  load_balancing_cross_zone_enabled = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  port = number (Optional)
  preserve_client_ip = string (Optional, Computed)
  protocol = string (Optional)
  protocol_version = string (Optional, Computed)
  proxy_protocol_v2 = bool (Optional)
  region = string (Optional, Computed)
  slow_start = number (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  target_type = string (Optional)
  vpc_id = string (Optional)

  health_check block "list" (Optional) {
    enabled = bool (Optional)
    healthy_threshold = number (Optional)
    interval = number (Optional)
    matcher = string (Optional, Computed)
    path = string (Optional, Computed)
    port = string (Optional)
    protocol = string (Optional)
    timeout = number (Optional, Computed)
    unhealthy_threshold = number (Optional)
  }

  stickiness block "list" (Optional) {
    type = string (Required)
    cookie_duration = number (Optional)
    cookie_name = string (Optional)
    enabled = bool (Optional)
  }

  target_failover block "list" (Optional) {
    on_deregistration = string (Required)
    on_unhealthy = string (Required)
  }

  target_group_health block "list" (Optional) {

    dns_failover block "list" (Optional) {
      minimum_healthy_targets_count = string (Optional)
      minimum_healthy_targets_percentage = string (Optional)
    }

    unhealthy_state_routing block "list" (Optional) {
      minimum_healthy_targets_count = number (Optional)
      minimum_healthy_targets_percentage = string (Optional)
    }
  }

  target_health_state block "list" (Optional) {
    enable_unhealthy_connection_termination = bool (Required)
    unhealthy_draining_interval = number (Optional)
  }
}
