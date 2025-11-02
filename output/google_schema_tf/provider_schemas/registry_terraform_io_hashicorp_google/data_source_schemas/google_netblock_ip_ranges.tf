data "google_netblock_ip_ranges" "name" {
  cidr_blocks = ['list', 'string'] (Computed)
  cidr_blocks_ipv4 = ['list', 'string'] (Computed)
  cidr_blocks_ipv6 = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  range_type = string (Optional)
}
