resource "aws_fsx_openzfs_volume" "name" {
  name = string (Required)
  parent_volume_id = string (Required)
  arn = string (Computed)
  copy_tags_to_snapshots = bool (Optional)
  data_compression_type = string (Optional)
  delete_volume_options = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  read_only = bool (Optional, Computed)
  record_size_kib = number (Optional)
  region = string (Optional, Computed)
  storage_capacity_quota_gib = number (Optional, Computed)
  storage_capacity_reservation_gib = number (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  volume_type = string (Optional)

  nfs_exports block "list" (Optional) {

    client_configurations block "set" (Required) {
      clients = string (Required)
      options = ['list', 'string'] (Required)
    }
  }

  origin_snapshot block "list" (Optional) {
    copy_strategy = string (Required)
    snapshot_arn = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  user_and_group_quotas block "set" (Optional) {
    id = number (Required)
    storage_capacity_quota_gib = number (Required)
    type = string (Required)
  }
}
