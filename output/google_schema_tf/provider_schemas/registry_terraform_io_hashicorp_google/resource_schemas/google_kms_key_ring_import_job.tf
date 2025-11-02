resource "google_kms_key_ring_import_job" "name" {
  import_job_id = string (Required)
  import_method = string (Required)
  key_ring = string (Required)
  protection_level = string (Required)
  attestation = ['list', ['object', {'content': 'string', 'format': 'string'}]] (Computed)
  expire_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  public_key = ['list', ['object', {'pem': 'string'}]] (Computed)
  state = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
