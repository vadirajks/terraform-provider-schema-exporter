data "aws_lb_target_group" "name" {
  arn = string (Optional, Computed)
  arn_suffix = string (Computed)
  connection_termination = bool (Computed)
  deregistration_delay = string (Computed)
  health_check = ['list', ['object', {'enabled': 'bool', 'healthy_threshold': 'number', 'interval': 'number', 'matcher': 'string', 'path': 'string', 'port': 'string', 'protocol': 'string', 'timeout': 'number', 'unhealthy_threshold': 'number'}]] (Computed)
  id = string (Optional, Computed)
  lambda_multi_value_headers_enabled = bool (Computed)
  load_balancer_arns = ['set', 'string'] (Computed)
  load_balancing_algorithm_type = string (Computed)
  load_balancing_anomaly_mitigation = string (Optional, Computed)
  load_balancing_cross_zone_enabled = string (Computed)
  name = string (Optional, Computed)
  port = number (Computed)
  preserve_client_ip = string (Computed)
  protocol = string (Computed)
  protocol_version = string (Computed)
  proxy_protocol_v2 = bool (Computed)
  region = string (Optional, Computed)
  slow_start = number (Computed)
  stickiness = ['list', ['object', {'cookie_duration': 'number', 'cookie_name': 'string', 'enabled': 'bool', 'type': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  target_type = string (Computed)
  vpc_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
