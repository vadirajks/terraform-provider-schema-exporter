data "aws_ip_ranges" "name" {
  services = ['set', 'string'] (Required)
  cidr_blocks = ['list', 'string'] (Computed)
  create_date = string (Computed)
  id = string (Optional, Computed)
  ipv6_cidr_blocks = ['list', 'string'] (Computed)
  regions = ['set', 'string'] (Optional)
  sync_token = number (Computed)
  url = string (Optional)
}
