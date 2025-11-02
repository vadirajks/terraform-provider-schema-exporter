resource "aws_dsql_cluster" "name" {
  arn = string (Computed)
  deletion_protection_enabled = bool (Optional, Computed)
  encryption_details = ['list', ['object', {'encryption_status': 'string', 'encryption_type': 'string'}]] (Computed)
  force_destroy = bool (Optional, Computed)
  identifier = string (Computed)
  kms_encryption_key = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  vpc_endpoint_service_name = string (Computed)

  multi_region_properties block "list" (Optional) {
    clusters = ['set', 'string'] (Optional, Computed)
    witness_region = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
