resource "google_apigee_keystores_aliases_self_signed_cert" "name" {
  alias = string (Required)
  environment = string (Required)
  keystore = string (Required)
  org_id = string (Required)
  sig_alg = string (Required)
  cert_validity_in_days = number (Optional)
  certs_info = ['list', ['object', {'cert_info': ['list', ['object', {'basic_constraints': 'string', 'expiry_date': 'string', 'is_valid': 'string', 'issuer': 'string', 'public_key': 'string', 'serial_number': 'string', 'sig_alg_name': 'string', 'subject': 'string', 'subject_alternative_names': ['list', 'string'], 'valid_from': 'string', 'version': 'number'}]]}]] (Computed)
  id = string (Optional, Computed)
  key_size = string (Optional)
  type = string (Computed)

  subject block "list" (Required) {
    common_name = string (Optional)
    country_code = string (Optional)
    email = string (Optional)
    locality = string (Optional)
    org = string (Optional)
    org_unit = string (Optional)
    state = string (Optional)
  }

  subject_alternative_dns_names block "list" (Optional) {
    subject_alternative_name = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
