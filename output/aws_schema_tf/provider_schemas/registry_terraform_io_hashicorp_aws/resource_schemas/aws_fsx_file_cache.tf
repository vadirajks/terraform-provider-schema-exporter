resource "aws_fsx_file_cache" "name" {
  file_cache_type = string (Required)
  file_cache_type_version = string (Required)
  storage_capacity = number (Required)
  subnet_ids = ['list', 'string'] (Required)
  arn = string (Computed)
  copy_tags_to_data_repository_associations = bool (Optional)
  data_repository_association_ids = ['set', 'string'] (Computed)
  dns_name = string (Computed)
  file_cache_id = string (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Optional, Computed)
  network_interface_ids = ['set', 'string'] (Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  security_group_ids = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Computed)

  data_repository_association block "set" (Optional) {
    data_repository_path = string (Required)
    file_cache_path = string (Required)
    association_id = string (Computed)
    data_repository_subdirectories = ['set', 'string'] (Optional)
    file_cache_id = string (Computed)
    file_system_id = string (Computed)
    file_system_path = string (Computed)
    imported_file_chunk_size = number (Computed)
    resource_arn = string (Computed)
    tags = ['map', 'string'] (Optional, Computed)

    nfs block "set" (Optional) {
      version = string (Required)
      dns_ips = ['set', 'string'] (Optional)
    }
  }

  lustre_configuration block "set" (Optional) {
    deployment_type = string (Required)
    per_unit_storage_throughput = number (Required)
    log_configuration = ['set', ['object', {'destination': 'string', 'level': 'string'}]] (Computed)
    mount_name = string (Computed)
    weekly_maintenance_start_time = string (Optional)

    metadata_configuration block "set" (Required) {
      storage_capacity = number (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
