resource "google_vmwareengine_network" "name" {
  location = string (Required)
  name = string (Required)
  type = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)
  vpc_networks = ['list', ['object', {'network': 'string', 'type': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
