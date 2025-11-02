resource "google_kms_ekm_connection" "name" {
  location = string (Required)
  name = string (Required)
  create_time = string (Computed)
  crypto_space_path = string (Optional, Computed)
  etag = string (Optional, Computed)
  id = string (Optional, Computed)
  key_management_mode = string (Optional)
  project = string (Optional, Computed)

  service_resolvers block "list" (Required) {
    hostname = string (Required)
    service_directory_service = string (Required)
    endpoint_filter = string (Optional, Computed)

    server_certificates block "list" (Required) {
      raw_der = string (Required)
      issuer = string (Computed)
      not_after_time = string (Computed)
      not_before_time = string (Computed)
      parsed = bool (Computed)
      serial_number = string (Computed)
      sha256_fingerprint = string (Computed)
      subject = string (Computed)
      subject_alternative_dns_names = ['list', 'string'] (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
