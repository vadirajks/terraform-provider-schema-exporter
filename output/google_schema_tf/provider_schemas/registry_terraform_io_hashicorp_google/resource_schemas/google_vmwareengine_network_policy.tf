resource "google_vmwareengine_network_policy" "name" {
  edge_services_cidr = string (Required)
  location = string (Required)
  name = string (Required)
  vmware_engine_network = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  uid = string (Computed)
  update_time = string (Computed)
  vmware_engine_network_canonical = string (Computed)

  external_ip block "list" (Optional) {
    enabled = bool (Optional)
    state = string (Computed)
  }

  internet_access block "list" (Optional) {
    enabled = bool (Optional)
    state = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
