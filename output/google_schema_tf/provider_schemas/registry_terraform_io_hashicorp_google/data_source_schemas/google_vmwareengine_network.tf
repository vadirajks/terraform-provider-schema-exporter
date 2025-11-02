data "google_vmwareengine_network" "name" {
  location = string (Required)
  name = string (Required)
  create_time = string (Computed)
  description = string (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional)
  state = string (Computed)
  type = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)
  vpc_networks = ['list', ['object', {'network': 'string', 'type': 'string'}]] (Computed)
}
