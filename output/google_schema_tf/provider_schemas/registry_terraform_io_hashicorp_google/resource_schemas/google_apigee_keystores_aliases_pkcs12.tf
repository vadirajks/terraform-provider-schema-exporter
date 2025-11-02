resource "google_apigee_keystores_aliases_pkcs12" "name" {
  alias = string (Required)
  environment = string (Required)
  file = string (Required)
  filehash = string (Required)
  keystore = string (Required)
  org_id = string (Required)
  certs_info = ['list', ['object', {'cert_info': ['list', ['object', {'basic_constraints': 'string', 'expiry_date': 'string', 'is_valid': 'string', 'issuer': 'string', 'public_key': 'string', 'serial_number': 'string', 'sig_alg_name': 'string', 'subject': 'string', 'subject_alternative_names': ['list', 'string'], 'valid_from': 'string', 'version': 'number'}]]}]] (Computed)
  id = string (Optional, Computed)
  password = string (Optional, Computed)
  type = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
