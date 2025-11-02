data "google_compute_router" "name" {
  name = string (Required)
  network = string (Required)
  bgp = ['list', ['object', {'advertise_mode': 'string', 'advertised_groups': ['list', 'string'], 'advertised_ip_ranges': ['set', ['object', {'description': 'string', 'range': 'string'}]], 'asn': 'number', 'identifier_range': 'string', 'keepalive_interval': 'number'}]] (Computed)
  creation_timestamp = string (Computed)
  description = string (Computed)
  encrypted_interconnect_router = bool (Computed)
  id = string (Optional, Computed)
  md5_authentication_keys = ['list', ['object', {'key': 'string', 'name': 'string'}]] (Computed)
  params = ['list', ['object', {'resource_manager_tags': ['map', 'string']}]] (Computed)
  project = string (Optional)
  region = string (Optional)
  self_link = string (Computed)
}
