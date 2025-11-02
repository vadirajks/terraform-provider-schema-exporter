resource "aws_shield_drt_access_role_arn_association" "name" {
  role_arn = string (Required)
  id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
