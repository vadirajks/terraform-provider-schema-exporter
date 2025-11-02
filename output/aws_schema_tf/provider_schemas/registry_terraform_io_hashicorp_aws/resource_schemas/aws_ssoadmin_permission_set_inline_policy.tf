resource "aws_ssoadmin_permission_set_inline_policy" "name" {
  inline_policy = string (Required)
  instance_arn = string (Required)
  permission_set_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
