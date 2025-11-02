resource "google_apphub_application" "name" {
  application_id = string (Required)
  location = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
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

  scope block "list" (Required) {
    type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
