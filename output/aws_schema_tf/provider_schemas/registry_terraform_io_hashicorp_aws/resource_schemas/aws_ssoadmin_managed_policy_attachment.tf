resource "aws_ssoadmin_managed_policy_attachment" "name" {
  instance_arn = string (Required)
  managed_policy_arn = string (Required)
  permission_set_arn = string (Required)
  id = string (Optional, Computed)
  managed_policy_name = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
