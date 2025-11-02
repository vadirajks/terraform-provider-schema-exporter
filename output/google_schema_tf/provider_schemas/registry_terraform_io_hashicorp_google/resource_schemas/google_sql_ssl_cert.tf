resource "google_sql_ssl_cert" "name" {
  common_name = string (Required)
  instance = string (Required)
  cert = string (Computed)
  cert_serial_number = string (Computed)
  create_time = string (Computed)
  expiration_time = string (Computed)
  id = string (Optional, Computed)
  private_key = string (Computed)
  project = string (Optional, Computed)
  server_ca_cert = string (Computed)
  sha1_fingerprint = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
