resource "google_colab_runtime" "name" {
  display_name = string (Required)
  location = string (Required)
  runtime_user = string (Required)
  auto_upgrade = bool (Optional)
  description = string (Optional)
  desired_state = string (Optional)
  expiration_time = string (Computed)
  id = string (Optional, Computed)
  is_upgradable = bool (Computed)
  name = string (Optional)
  notebook_runtime_type = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)

  notebook_runtime_template_ref block "list" (Optional) {
    notebook_runtime_template = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
