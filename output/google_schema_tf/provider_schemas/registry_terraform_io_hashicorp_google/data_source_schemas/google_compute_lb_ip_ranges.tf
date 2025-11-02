data "google_compute_lb_ip_ranges" "name" {
  http_ssl_tcp_internal = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  network = ['list', 'string'] (Computed)
}
