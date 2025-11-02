resource "aws_qldb_ledger" "name" {
  permissions_mode = string (Required)
  arn = string (Computed)
  deletion_protection = bool (Optional)
  id = string (Optional, Computed)
  kms_key = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
