resource "google_deployment_manager_deployment" "name" {
  name = string (Required)
  create_policy = string (Optional)
  delete_policy = string (Optional)
  deployment_id = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  manifest = string (Computed)
  preview = bool (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)

  labels block "set" (Optional) {
    key = string (Optional)
    value = string (Optional)
  }

  target block "list" (Required) {

    config block "list" (Required) {
      content = string (Required)
    }

    imports block "list" (Optional) {
      content = string (Optional)
      name = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
