resource "google_compute_disk" "name" {
  name = string (Required)
  access_mode = string (Optional, Computed)
  architecture = string (Optional)
  create_snapshot_before_destroy = bool (Optional)
  create_snapshot_before_destroy_prefix = string (Optional)
  creation_timestamp = string (Computed)
  description = string (Optional)
  disk_id = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  enable_confidential_compute = bool (Optional, Computed)
  id = string (Optional, Computed)
  image = string (Optional)
  label_fingerprint = string (Computed)
  labels = ['map', 'string'] (Optional)
  last_attach_timestamp = string (Computed)
  last_detach_timestamp = string (Computed)
  licenses = ['list', 'string'] (Optional, Computed)
  physical_block_size_bytes = number (Optional, Computed)
  project = string (Optional, Computed)
  provisioned_iops = number (Optional, Computed)
  provisioned_throughput = number (Optional, Computed)
  self_link = string (Computed)
  size = number (Optional, Computed)
  snapshot = string (Optional)
  source_disk = string (Optional)
  source_disk_id = string (Computed)
  source_image_id = string (Computed)
  source_instant_snapshot = string (Optional)
  source_instant_snapshot_id = string (Computed)
  source_snapshot_id = string (Computed)
  source_storage_object = string (Optional)
  storage_pool = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  type = string (Optional)
  users = ['list', 'string'] (Computed)
  zone = string (Optional, Computed)

  async_primary_disk block "list" (Optional) {
    disk = string (Required)
  }

  disk_encryption_key block "list" (Optional) {
    kms_key_self_link = string (Optional)
    kms_key_service_account = string (Optional)
    raw_key = string (Optional)
    rsa_encrypted_key = string (Optional)
    sha256 = string (Computed)
  }

  guest_os_features block "set" (Optional) {
    type = string (Required)
  }

  params block "list" (Optional) {
    resource_manager_tags = ['map', 'string'] (Optional)
  }

  source_image_encryption_key block "list" (Optional) {
    kms_key_self_link = string (Optional)
    kms_key_service_account = string (Optional)
    raw_key = string (Optional)
    sha256 = string (Computed)
  }

  source_snapshot_encryption_key block "list" (Optional) {
    kms_key_self_link = string (Optional)
    kms_key_service_account = string (Optional)
    raw_key = string (Optional)
    sha256 = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
