resource "aws_codecatalyst_project" "name" {
  display_name = string (Required)
  space_name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
