resource "google_clouddeploy_custom_target_type" "name" {
  location = string (Required)
  name = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  custom_target_type_id = string (Computed)
  description = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  custom_actions block "list" (Optional) {
    deploy_action = string (Required)
    render_action = string (Optional)

    include_skaffold_modules block "list" (Optional) {
      configs = ['list', 'string'] (Optional)

      git block "list" (Optional) {
        repo = string (Required)
        path = string (Optional)
        ref = string (Optional)
      }

      google_cloud_build_repo block "list" (Optional) {
        repository = string (Required)
        path = string (Optional)
        ref = string (Optional)
      }

      google_cloud_storage block "list" (Optional) {
        source = string (Required)
        path = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
