resource "google_apphub_service" "name" {
  application_id = string (Required)
  discovered_service = string (Required)
  location = string (Required)
  service_id = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  service_properties = ['list', ['object', {'gcp_project': 'string', 'location': 'string', 'zone': 'string'}]] (Computed)
  service_reference = ['list', ['object', {'uri': 'string'}]] (Computed)
  state = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)

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
