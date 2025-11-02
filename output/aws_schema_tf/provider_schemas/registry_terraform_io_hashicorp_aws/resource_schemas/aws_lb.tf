resource "aws_lb" "name" {
  arn = string (Computed)
  arn_suffix = string (Computed)
  client_keep_alive = number (Optional)
  customer_owned_ipv4_pool = string (Optional)
  desync_mitigation_mode = string (Optional)
  dns_name = string (Computed)
  dns_record_client_routing_policy = string (Optional)
  drop_invalid_header_fields = bool (Optional)
  enable_cross_zone_load_balancing = bool (Optional)
  enable_deletion_protection = bool (Optional)
  enable_http2 = bool (Optional)
  enable_tls_version_and_cipher_suite_headers = bool (Optional)
  enable_waf_fail_open = bool (Optional)
  enable_xff_client_port = bool (Optional)
  enable_zonal_shift = bool (Optional)
  enforce_security_group_inbound_rules_on_private_link_traffic = string (Optional, Computed)
  id = string (Optional, Computed)
  idle_timeout = number (Optional)
  internal = bool (Optional, Computed)
  ip_address_type = string (Optional, Computed)
  load_balancer_type = string (Optional)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  preserve_host_header = bool (Optional)
  region = string (Optional, Computed)
  secondary_ips_auto_assigned_per_subnet = number (Optional, Computed)
  security_groups = ['set', 'string'] (Optional, Computed)
  subnets = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Computed)
  xff_header_processing_mode = string (Optional)
  zone_id = string (Computed)

  access_logs block "list" (Optional) {
    bucket = string (Required)
    enabled = bool (Optional)
    prefix = string (Optional)
  }

  connection_logs block "list" (Optional) {
    bucket = string (Required)
    enabled = bool (Optional)
    prefix = string (Optional)
  }

  ipam_pools block "list" (Optional) {
    ipv4_ipam_pool_id = string (Required)
  }

  minimum_load_balancer_capacity block "list" (Optional) {
    capacity_units = number (Required)
  }

  subnet_mapping block "set" (Optional) {
    subnet_id = string (Required)
    allocation_id = string (Optional)
    ipv6_address = string (Optional)
    outpost_id = string (Computed)
    private_ipv4_address = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
