resource "google_securityposture_posture_deployment" "name" {
  location = string (Required)
  parent = string (Required)
  posture_deployment_id = string (Required)
  posture_id = string (Required)
  posture_revision_id = string (Required)
  target_resource = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  desired_posture_id = string (Computed)
  desired_posture_revision_id = string (Computed)
  etag = string (Computed)
  failure_message = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  reconciling = bool (Computed)
  state = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
