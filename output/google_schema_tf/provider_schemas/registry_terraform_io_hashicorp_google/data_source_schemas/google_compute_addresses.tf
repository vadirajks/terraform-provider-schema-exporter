data "google_compute_addresses" "name" {
  addresses = ['list', ['object', {'address': 'string', 'address_type': 'string', 'description': 'string', 'name': 'string', 'region': 'string', 'self_link': 'string', 'status': 'string'}]] (Computed)
  filter = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional)
}
