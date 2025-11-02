data "aws_ssmincidents_replication_set" "name" {
  arn = string (Computed)
  created_by = string (Computed)
  deletion_protected = bool (Computed)
  id = string (Optional, Computed)
  last_modified_by = string (Computed)
  region = ['set', ['object', {'kms_key_arn': 'string', 'name': 'string', 'status': 'string', 'status_message': 'string'}]] (Computed)
  regions = ['set', ['object', {'kms_key_arn': 'string', 'name': 'string', 'status': 'string', 'status_message': 'string'}]] (Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
