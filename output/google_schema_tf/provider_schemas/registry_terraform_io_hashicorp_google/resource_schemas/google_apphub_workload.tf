resource "google_apphub_workload" "name" {
  application_id = string (Required)
  discovered_workload = string (Required)
  location = string (Required)
  workload_id = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)
  workload_properties = ['list', ['object', {'gcp_project': 'string', 'location': 'string', 'zone': 'string'}]] (Computed)
  workload_reference = ['list', ['object', {'uri': 'string'}]] (Computed)

  attributes block "list" (Optional) {

    business_owners block "list" (Optional) {
      email = string (Required)
      display_name = string (Optional)
    }

    criticality block "list" (Optional) {
      type = string (Required)
    }

    developer_owners block "list" (Optional) {
      email = string (Required)
      display_name = string (Optional)
    }

    environment block "list" (Optional) {
      type = string (Required)
    }

    operator_owners block "list" (Optional) {
      email = string (Required)
      display_name = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
