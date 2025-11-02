data "google_sql_ca_certs" "name" {
  instance = string (Required)
  active_version = string (Computed)
  certs = ['list', ['object', {'cert': 'string', 'common_name': 'string', 'create_time': 'string', 'expiration_time': 'string', 'sha1_fingerprint': 'string'}]] (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
