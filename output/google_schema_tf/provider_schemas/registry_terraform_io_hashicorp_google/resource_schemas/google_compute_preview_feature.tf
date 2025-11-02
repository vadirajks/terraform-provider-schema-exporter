resource "google_compute_preview_feature" "name" {
  activation_status = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  rollout_operation block "list" (Optional) {

    rollout_input block "list" (Optional) {
      predefined_rollout_plan = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
