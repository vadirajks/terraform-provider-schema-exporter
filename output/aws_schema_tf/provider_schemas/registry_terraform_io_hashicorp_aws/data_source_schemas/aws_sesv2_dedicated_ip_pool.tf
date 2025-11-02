data "aws_sesv2_dedicated_ip_pool" "name" {
  pool_name = string (Required)
  arn = string (Computed)
  dedicated_ips = ['list', ['object', {'ip': 'string', 'warmup_percentage': 'number', 'warmup_status': 'string'}]] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  scaling_mode = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
