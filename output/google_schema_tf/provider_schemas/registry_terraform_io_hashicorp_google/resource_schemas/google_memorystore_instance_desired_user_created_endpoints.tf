resource "google_memorystore_instance_desired_user_created_endpoints" "name" {
  name = string (Required)
  region = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  desired_user_created_endpoints block "list" (Optional) {

    connections block "list" (Optional) {

      psc_connection block "list" (Optional) {
        forwarding_rule = string (Required)
        ip_address = string (Required)
        network = string (Required)
        psc_connection_id = string (Required)
        service_attachment = string (Required)
        connection_type = string (Computed)
        project_id = string (Optional, Computed)
        psc_connection_status = string (Computed)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
