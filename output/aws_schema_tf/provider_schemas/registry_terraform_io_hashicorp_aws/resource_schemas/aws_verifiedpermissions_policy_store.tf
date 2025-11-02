resource "aws_verifiedpermissions_policy_store" "name" {
  arn = string (Computed)
  deletion_protection = string (Optional, Computed)
  description = string (Optional)
  id = string (Computed)
  policy_store_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  validation_settings block "list" (Optional) {
    mode = string (Required)
  }
}
