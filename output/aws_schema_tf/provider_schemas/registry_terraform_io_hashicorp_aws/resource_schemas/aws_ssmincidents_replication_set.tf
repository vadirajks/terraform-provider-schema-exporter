resource "aws_ssmincidents_replication_set" "name" {
  arn = string (Computed)
  created_by = string (Computed)
  deletion_protected = bool (Computed)
  id = string (Optional, Computed)
  last_modified_by = string (Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  region block "set" (Optional) {
    name = string (Required)
    kms_key_arn = string (Optional)
    status = string (Computed)
    status_message = string (Computed)
  }

  regions block "set" (Optional) {
    name = string (Required)
    kms_key_arn = string (Optional)
    status = string (Computed)
    status_message = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
