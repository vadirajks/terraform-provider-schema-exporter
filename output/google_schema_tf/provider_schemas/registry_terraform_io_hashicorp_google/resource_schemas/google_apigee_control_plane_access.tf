resource "google_apigee_control_plane_access" "name" {
  name = string (Required)
  analytics_publisher_identities = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  synchronizer_identities = ['list', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
