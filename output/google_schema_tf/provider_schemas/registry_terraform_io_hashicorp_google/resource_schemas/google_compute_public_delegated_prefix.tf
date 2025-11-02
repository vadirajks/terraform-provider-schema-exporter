resource "google_compute_public_delegated_prefix" "name" {
  ip_cidr_range = string (Required)
  name = string (Required)
  parent_prefix = string (Required)
  region = string (Required)
  allocatable_prefix_length = number (Optional, Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  is_live_migration = bool (Optional)
  mode = string (Optional)
  project = string (Optional, Computed)
  public_delegated_sub_prefixs = ['list', ['object', {'allocatable_prefix_length': 'number', 'delegatee_project': 'string', 'description': 'string', 'ip_cidr_range': 'string', 'is_address': 'bool', 'mode': 'string', 'name': 'string', 'region': 'string', 'status': 'string'}]] (Computed)
  self_link = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
