resource "aws_efs_replication_configuration" "name" {
  source_file_system_id = string (Required)
  creation_time = string (Computed)
  id = string (Optional, Computed)
  original_source_file_system_arn = string (Computed)
  region = string (Optional, Computed)
  source_file_system_arn = string (Computed)
  source_file_system_region = string (Computed)

  destination block "list" (Required) {
    availability_zone_name = string (Optional)
    file_system_id = string (Optional, Computed)
    kms_key_id = string (Optional)
    region = string (Optional, Computed)
    status = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
