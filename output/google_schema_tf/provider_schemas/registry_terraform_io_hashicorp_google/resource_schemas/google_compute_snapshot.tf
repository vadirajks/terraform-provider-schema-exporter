resource "google_compute_snapshot" "name" {
  name = string (Required)
  source_disk = string (Required)
  chain_name = string (Optional)
  creation_timestamp = string (Computed)
  description = string (Optional)
  disk_size_gb = number (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  label_fingerprint = string (Computed)
  labels = ['map', 'string'] (Optional)
  licenses = ['list', 'string'] (Computed)
  project = string (Optional, Computed)
  self_link = string (Computed)
  snapshot_id = number (Computed)
  storage_bytes = number (Computed)
  storage_locations = ['list', 'string'] (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  zone = string (Optional, Computed)

  snapshot_encryption_key block "list" (Optional) {
    kms_key_self_link = string (Optional)
    kms_key_service_account = string (Optional)
    raw_key = string (Optional)
    rsa_encrypted_key = string (Optional)
    sha256 = string (Computed)
  }

  source_disk_encryption_key block "list" (Optional) {
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
