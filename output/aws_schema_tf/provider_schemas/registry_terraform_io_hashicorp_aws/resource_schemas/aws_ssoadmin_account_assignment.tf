resource "aws_ssoadmin_account_assignment" "name" {
  instance_arn = string (Required)
  permission_set_arn = string (Required)
  principal_id = string (Required)
  principal_type = string (Required)
  target_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  target_type = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
