data "google_monitoring_uptime_check_ips" "name" {
  id = string (Optional, Computed)
  uptime_check_ips = ['list', ['object', {'ip_address': 'string', 'location': 'string', 'region': 'string'}]] (Computed)
}
