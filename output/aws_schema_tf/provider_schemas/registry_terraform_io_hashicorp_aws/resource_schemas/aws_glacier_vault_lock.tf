resource "aws_glacier_vault_lock" "name" {
  complete_lock = bool (Required)
  policy = string (Required)
  vault_name = string (Required)
  id = string (Optional, Computed)
  ignore_deletion_error = bool (Optional)
  region = string (Optional, Computed)
}
