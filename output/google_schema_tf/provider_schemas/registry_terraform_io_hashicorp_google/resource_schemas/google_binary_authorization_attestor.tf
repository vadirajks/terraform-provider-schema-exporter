resource "google_binary_authorization_attestor" "name" {
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  attestation_authority_note block "list" (Required) {
    note_reference = string (Required)
    delegation_service_account_email = string (Computed)

    public_keys block "list" (Optional) {
      ascii_armored_pgp_public_key = string (Optional)
      comment = string (Optional)
      id = string (Optional, Computed)

      pkix_public_key block "list" (Optional) {
        public_key_pem = string (Optional)
        signature_algorithm = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
