data "aws_qldb_ledger" "name" {
  name = string (Required)
  arn = string (Computed)
  deletion_protection = bool (Computed)
  id = string (Optional, Computed)
  kms_key = string (Computed)
  permissions_mode = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
