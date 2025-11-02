resource "google_compute_interconnect_group" "name" {
  name = string (Required)
  configured = ['list', ['object', {'topology_capability': ['list', ['object', {'intended_capability_blockers': ['list', ['object', {'blocker_type': 'string', 'documentation_link': 'string', 'explanation': 'string', 'facilities': ['list', 'string'], 'interconnects': ['list', 'string'], 'metros': ['list', 'string'], 'zones': ['list', 'string']}]], 'supported_sla': 'string'}]]}]] (Computed)
  creation_timestamp = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  physical_structure = ['list', ['object', {'metros': ['list', ['object', {'facilities': ['list', ['object', {'facility': 'string', 'zones': ['list', ['object', {'interconnects': ['list', 'string'], 'zone': 'string'}]]}]], 'metro': 'string'}]]}]] (Computed)
  project = string (Optional, Computed)

  intent block "list" (Required) {
    topology_capability = string (Optional)
  }

  interconnects block "set" (Optional) {
    name = string (Required)
    interconnect = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
