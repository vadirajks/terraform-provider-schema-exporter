data "google_compute_interconnect_locations" "name" {
  id = string (Optional, Computed)
  locations = ['list', ['object', {'address': 'string', 'availability_zone': 'string', 'available_features': ['list', 'string'], 'available_link_types': ['list', 'string'], 'city': 'string', 'continent': 'string', 'description': 'string', 'facility_provider': 'string', 'facility_provider_facility_id': 'string', 'name': 'string', 'peeringdb_facility_id': 'string', 'self_link': 'string', 'status': 'string', 'supports_pzs': 'bool'}]] (Computed)
  project = string (Optional, Computed)
}
