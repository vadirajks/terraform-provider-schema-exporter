data "google_apphub_discovered_workload" "name" {
  location = string (Required)
  workload_uri = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional)
  workload_properties = ['list', ['object', {'gcp_project': 'string', 'location': 'string', 'zone': 'string'}]] (Computed)
  workload_reference = ['list', ['object', {'uri': 'string'}]] (Computed)
}
