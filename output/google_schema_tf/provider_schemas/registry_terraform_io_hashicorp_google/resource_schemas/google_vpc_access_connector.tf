resource "google_vpc_access_connector" "name" {
  name = string (Required)
  connected_projects = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  ip_cidr_range = string (Optional)
  machine_type = string (Optional)
  max_instances = number (Optional, Computed)
  max_throughput = number (Optional, Computed)
  min_instances = number (Optional, Computed)
  min_throughput = number (Optional, Computed)
  network = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)
  state = string (Computed)

  subnet block "list" (Optional) {
    name = string (Optional)
    project_id = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
