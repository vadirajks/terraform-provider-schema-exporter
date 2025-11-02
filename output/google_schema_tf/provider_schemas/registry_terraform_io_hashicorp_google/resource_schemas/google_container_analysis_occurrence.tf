resource "google_container_analysis_occurrence" "name" {
  note_name = string (Required)
  resource_uri = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  kind = string (Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  remediation = string (Optional)
  update_time = string (Computed)

  attestation block "list" (Required) {
    serialized_payload = string (Required)

    signatures block "set" (Required) {
      public_key_id = string (Required)
      signature = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
