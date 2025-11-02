data "google_dns_managed_zones" "name" {
  id = string (Computed)
  managed_zones = ['list', ['object', {'description': 'string', 'dns_name': 'string', 'id': 'string', 'managed_zone_id': 'number', 'name': 'string', 'name_servers': ['list', 'string'], 'project': 'string', 'visibility': 'string'}]] (Computed)
  project = string (Optional)
}
