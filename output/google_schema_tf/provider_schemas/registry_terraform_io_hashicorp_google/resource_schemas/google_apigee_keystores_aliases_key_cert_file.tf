resource "google_apigee_keystores_aliases_key_cert_file" "name" {
  alias = string (Required)
  cert = string (Required)
  environment = string (Required)
  keystore = string (Required)
  org_id = string (Required)
  certs_info = ['list', ['object', {'basic_constraints': 'string', 'expiry_date': 'string', 'is_valid': 'string', 'issuer': 'string', 'public_key': 'string', 'serial_number': 'string', 'sig_alg_name': 'string', 'subject': 'string', 'subject_alternative_names': ['list', 'string'], 'valid_from': 'string', 'version': 'number'}]] (Computed)
  id = string (Computed)
  key = string (Optional)
  password = string (Optional)
  type = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
