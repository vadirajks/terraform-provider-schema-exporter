resource "aws_codecatalyst_dev_environment" "name" {
  instance_type = string (Required)
  project_name = string (Required)
  space_name = string (Required)
  alias = string (Optional)
  id = string (Optional, Computed)
  inactivity_timeout_minutes = number (Optional)
  region = string (Optional, Computed)

  ides block "list" (Required) {
    name = string (Optional)
    runtime = string (Optional)
  }

  persistent_storage block "list" (Required) {
    size = number (Required)
  }

  repositories block "list" (Optional) {
    repository_name = string (Required)
    branch_name = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
