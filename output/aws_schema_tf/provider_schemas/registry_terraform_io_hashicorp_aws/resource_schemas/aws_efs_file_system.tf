resource "aws_efs_file_system" "name" {
  arn = string (Computed)
  availability_zone_id = string (Computed)
  availability_zone_name = string (Optional, Computed)
  creation_token = string (Optional, Computed)
  dns_name = string (Computed)
  encrypted = bool (Optional, Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Optional, Computed)
  name = string (Computed)
  number_of_mount_targets = number (Computed)
  owner_id = string (Computed)
  performance_mode = string (Optional, Computed)
  provisioned_throughput_in_mibps = number (Optional)
  region = string (Optional, Computed)
  size_in_bytes = ['list', ['object', {'value': 'number', 'value_in_ia': 'number', 'value_in_standard': 'number'}]] (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  throughput_mode = string (Optional)

  lifecycle_policy block "list" (Optional) {
    transition_to_archive = string (Optional)
    transition_to_ia = string (Optional)
    transition_to_primary_storage_class = string (Optional)
  }

  protection block "list" (Optional) {
    replication_overwrite = string (Optional, Computed)
  }
}
