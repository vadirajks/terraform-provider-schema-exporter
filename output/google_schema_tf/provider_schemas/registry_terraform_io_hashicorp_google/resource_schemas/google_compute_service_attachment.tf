resource "google_compute_service_attachment" "name" {
  connection_preference = string (Required)
  enable_proxy_protocol = bool (Required)
  name = string (Required)
  nat_subnets = ['list', 'string'] (Required)
  target_service = string (Required)
  connected_endpoints = ['list', ['object', {'consumer_network': 'string', 'endpoint': 'string', 'propagated_connection_count': 'number', 'psc_connection_id': 'string', 'status': 'string'}]] (Computed)
  consumer_reject_lists = ['list', 'string'] (Optional)
  description = string (Optional)
  domain_names = ['list', 'string'] (Optional)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  propagated_connection_limit = number (Optional, Computed)
  psc_service_attachment_id = ['list', ['object', {'high': 'string', 'low': 'string'}]] (Computed)
  reconcile_connections = bool (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)
  send_propagated_connection_limit_if_zero = bool (Optional)

  consumer_accept_lists block "set" (Optional) {
    connection_limit = number (Required)
    network_url = string (Optional)
    project_id_or_num = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
