resource "aws_elb" "name" {
  arn = string (Computed)
  availability_zones = ['set', 'string'] (Optional, Computed)
  connection_draining = bool (Optional)
  connection_draining_timeout = number (Optional)
  cross_zone_load_balancing = bool (Optional)
  desync_mitigation_mode = string (Optional)
  dns_name = string (Computed)
  id = string (Optional, Computed)
  idle_timeout = number (Optional)
  instances = ['set', 'string'] (Optional, Computed)
  internal = bool (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  security_groups = ['set', 'string'] (Optional, Computed)
  source_security_group = string (Optional, Computed)
  source_security_group_id = string (Computed)
  subnets = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  zone_id = string (Computed)

  access_logs block "list" (Optional) {
    bucket = string (Required)
    bucket_prefix = string (Optional)
    enabled = bool (Optional)
    interval = number (Optional)
  }

  health_check block "list" (Optional) {
    healthy_threshold = number (Required)
    interval = number (Required)
    target = string (Required)
    timeout = number (Required)
    unhealthy_threshold = number (Required)
  }

  listener block "set" (Required) {
    instance_port = number (Required)
    instance_protocol = string (Required)
    lb_port = number (Required)
    lb_protocol = string (Required)
    ssl_certificate_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
