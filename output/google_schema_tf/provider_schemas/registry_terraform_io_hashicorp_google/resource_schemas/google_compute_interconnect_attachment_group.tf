resource "google_compute_interconnect_attachment_group" "name" {
  name = string (Required)
  configured = ['list', ['object', {'availability_sla': ['list', ['object', {'effective_sla': 'string', 'intended_sla_blockers': ['list', ['object', {'attachments': ['list', 'string'], 'blocker_type': 'string', 'documentation_link': 'string', 'explanation': 'string', 'metros': ['list', 'string'], 'regions': ['list', 'string'], 'zones': ['list', 'string']}]]}]]}]] (Computed)
  creation_timestamp = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  interconnect_group = string (Optional)
  logical_structure = ['list', ['object', {'regions': ['list', ['object', {'metros': ['list', ['object', {'facilities': ['list', ['object', {'facility': 'string', 'zones': ['list', ['object', {'attachment': ['list', 'string'], 'zone': 'string'}]]}]], 'metro': 'string'}]], 'region': 'string'}]]}]] (Computed)
  project = string (Optional, Computed)

  attachments block "set" (Optional) {
    name = string (Required)
    attachment = string (Optional)
  }

  intent block "list" (Required) {
    availability_sla = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
