resource "google_edgecontainer_vpn_connection" "name" {
  cluster = string (Required)
  location = string (Required)
  name = string (Required)
  create_time = string (Computed)
  details = ['list', ['object', {'cloud_router': ['list', ['object', {'name': 'string'}]], 'cloud_vpns': ['list', ['object', {'gateway': 'string'}]], 'error': 'string', 'state': 'string'}]] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  enable_high_availability = bool (Optional, Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  nat_gateway_ip = string (Optional)
  project = string (Optional, Computed)
  router = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)
  vpc = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_project block "list" (Optional) {
    project_id = string (Optional)
  }
}
