resource "google_compute_image" "name" {
  name = string (Required)
  archive_size_bytes = number (Computed)
  creation_timestamp = string (Computed)
  description = string (Optional)
  disk_size_gb = number (Optional, Computed)
  effective_labels = ['map', 'string'] (Computed)
  family = string (Optional)
  id = string (Optional, Computed)
  label_fingerprint = string (Computed)
  labels = ['map', 'string'] (Optional)
  licenses = ['list', 'string'] (Optional, Computed)
  project = string (Optional, Computed)
  self_link = string (Computed)
  source_disk = string (Optional)
  source_image = string (Optional)
  source_snapshot = string (Optional)
  storage_locations = ['list', 'string'] (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  guest_os_features block "set" (Optional) {
    type = string (Required)
  }

  image_encryption_key block "list" (Optional) {
    kms_key_self_link = string (Optional)
    kms_key_service_account = string (Optional)
    raw_key = string (Optional)
    rsa_encrypted_key = string (Optional)
  }

  raw_disk block "list" (Optional) {
    source = string (Required)
    container_type = string (Optional)
    sha1 = string (Optional)
  }

  shielded_instance_initial_state block "list" (Optional) {

    dbs block "list" (Optional) {
      content = string (Required)
      file_type = string (Optional)
    }

    dbxs block "list" (Optional) {
      content = string (Required)
      file_type = string (Optional)
    }

    keks block "list" (Optional) {
      content = string (Required)
      file_type = string (Optional)
    }

    pk block "list" (Optional) {
      content = string (Required)
      file_type = string (Optional)
    }
  }

  source_disk_encryption_key block "list" (Optional) {
    kms_key_self_link = string (Optional)
    kms_key_service_account = string (Optional)
    raw_key = string (Optional)
    rsa_encrypted_key = string (Optional)
  }

  source_image_encryption_key block "list" (Optional) {
    kms_key_self_link = string (Optional)
    kms_key_service_account = string (Optional)
    raw_key = string (Optional)
    rsa_encrypted_key = string (Optional)
  }

  source_snapshot_encryption_key block "list" (Optional) {
    kms_key_self_link = string (Optional)
    kms_key_service_account = string (Optional)
    raw_key = string (Optional)
    rsa_encrypted_key = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
