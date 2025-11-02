resource "google_compute_network_attachment" "name" {
  connection_preference = string (Required)
  name = string (Required)
  subnetworks = ['list', 'string'] (Required)
  connection_endpoints = ['list', ['object', {'ip_address': 'string', 'project_id_or_num': 'string', 'secondary_ip_cidr_ranges': 'string', 'status': 'string', 'subnetwork': 'string'}]] (Computed)
  creation_timestamp = string (Computed)
  description = string (Optional)
  fingerprint = string (Computed)
  id = string (Computed)
  kind = string (Computed)
  network = string (Computed)
  producer_accept_lists = ['list', 'string'] (Optional)
  producer_reject_lists = ['list', 'string'] (Optional)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)
  self_link_with_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
