resource "aws_codecatalyst_source_repository" "name" {
  name = string (Required)
  project_name = string (Required)
  space_name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
