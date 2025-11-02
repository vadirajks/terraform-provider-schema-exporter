data "google_compute_subnetworks" "name" {
  filter = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional)
  region = string (Optional)
  subnetworks = ['list', ['object', {'description': 'string', 'ip_cidr_range': 'string', 'name': 'string', 'network': 'string', 'network_name': 'string', 'network_self_link': 'string', 'private_ip_google_access': 'bool', 'self_link': 'string'}]] (Computed)
}
