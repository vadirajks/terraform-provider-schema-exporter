resource "google_apigee_environment_api_revision_deployment" "name" {
  api = string (Required)
  environment = string (Required)
  org_id = string (Required)
  revision = number (Required)
  basepaths = ['list', 'string'] (Computed)
  deploy_start_time = string (Computed)
  id = string (Optional, Computed)
  override = bool (Optional)
  sequenced_rollout = bool (Optional)
  service_account = string (Optional)
  state = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
