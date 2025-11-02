resource "google_container_analysis_note" "name" {
  name = string (Required)
  create_time = string (Computed)
  expiration_time = string (Optional)
  id = string (Optional, Computed)
  kind = string (Computed)
  long_description = string (Optional)
  project = string (Optional, Computed)
  related_note_names = ['set', 'string'] (Optional)
  short_description = string (Optional)
  update_time = string (Computed)

  attestation_authority block "list" (Required) {

    hint block "list" (Required) {
      human_readable_name = string (Required)
    }
  }

  related_url block "set" (Optional) {
    url = string (Required)
    label = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
