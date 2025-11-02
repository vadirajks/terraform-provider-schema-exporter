resource "aws_shield_drt_access_log_bucket_association" "name" {
  log_bucket = string (Required)
  role_arn_association_id = string (Required)
  id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
