resource "google_notebooks_environment" "name" {
  location = string (Required)
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  post_startup_script = string (Optional)
  project = string (Optional, Computed)

  container_image block "list" (Optional) {
    repository = string (Required)
    tag = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vm_image block "list" (Optional) {
    project = string (Required)
    image_family = string (Optional)
    image_name = string (Optional)
  }
}
