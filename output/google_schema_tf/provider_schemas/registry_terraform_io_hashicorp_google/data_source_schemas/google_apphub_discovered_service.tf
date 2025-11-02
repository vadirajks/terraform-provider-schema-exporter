data "google_apphub_discovered_service" "name" {
  location = string (Required)
  service_uri = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional)
  service_properties = ['list', ['object', {'gcp_project': 'string', 'location': 'string', 'zone': 'string'}]] (Computed)
  service_reference = ['list', ['object', {'path': 'string', 'uri': 'string'}]] (Computed)
}
