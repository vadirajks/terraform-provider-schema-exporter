resource "google_privateca_certificate" "name" {
  location = string (Required)
  name = string (Required)
  pool = string (Required)
  certificate_authority = string (Optional)
  certificate_description = ['list', ['object', {'aia_issuing_certificate_urls': ['list', 'string'], 'authority_key_id': ['list', ['object', {'key_id': 'string'}]], 'cert_fingerprint': ['list', ['object', {'sha256_hash': 'string'}]], 'crl_distribution_points': ['list', 'string'], 'public_key': ['list', ['object', {'format': 'string', 'key': 'string'}]], 'subject_description': ['list', ['object', {'hex_serial_number': 'string', 'lifetime': 'string', 'not_after_time': 'string', 'not_before_time': 'string', 'subject': ['list', ['object', {'common_name': 'string', 'country_code': 'string', 'locality': 'string', 'organization': 'string', 'organizational_unit': 'string', 'postal_code': 'string', 'province': 'string', 'street_address': 'string'}]], 'subject_alt_name': ['list', ['object', {'custom_sans': ['list', ['object', {'critical': 'bool', 'obect_id': ['list', ['object', {'object_id_path': ['list', 'number']}]], 'value': 'string'}]], 'dns_names': ['list', 'string'], 'email_addresses': ['list', 'string'], 'ip_addresses': ['list', 'string'], 'uris': ['list', 'string']}]]}]], 'subject_key_id': ['list', ['object', {'key_id': 'string'}]], 'x509_description': ['list', ['object', {'additional_extensions': ['list', ['object', {'critical': 'bool', 'object_id': ['list', ['object', {'object_id_path': ['list', 'number']}]], 'value': 'string'}]], 'aia_ocsp_servers': ['list', 'string'], 'ca_options': ['list', ['object', {'is_ca': 'bool', 'max_issuer_path_length': 'number'}]], 'key_usage': ['list', ['object', {'base_key_usage': ['list', ['object', {'cert_sign': 'bool', 'content_commitment': 'bool', 'crl_sign': 'bool', 'data_encipherment': 'bool', 'decipher_only': 'bool', 'digital_signature': 'bool', 'encipher_only': 'bool', 'key_agreement': 'bool', 'key_encipherment': 'bool'}]], 'extended_key_usage': ['list', ['object', {'client_auth': 'bool', 'code_signing': 'bool', 'email_protection': 'bool', 'ocsp_signing': 'bool', 'server_auth': 'bool', 'time_stamping': 'bool'}]], 'unknown_extended_key_usages': ['list', ['object', {'object_id_path': ['list', 'number']}]]}]], 'name_constraints': ['list', ['object', {'critical': 'bool', 'excluded_dns_names': ['list', 'string'], 'excluded_email_addresses': ['list', 'string'], 'excluded_ip_ranges': ['list', 'string'], 'excluded_uris': ['list', 'string'], 'permitted_dns_names': ['list', 'string'], 'permitted_email_addresses': ['list', 'string'], 'permitted_ip_ranges': ['list', 'string'], 'permitted_uris': ['list', 'string']}]], 'policy_ids': ['list', ['object', {'object_id_path': ['list', 'number']}]]}]]}]] (Computed)
  certificate_template = string (Optional)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  issuer_certificate_authority = string (Computed)
  labels = ['map', 'string'] (Optional)
  lifetime = string (Optional)
  pem_certificate = string (Computed)
  pem_certificate_chain = ['list', 'string'] (Computed)
  pem_csr = string (Optional)
  project = string (Optional, Computed)
  revocation_details = ['list', ['object', {'revocation_state': 'string', 'revocation_time': 'string'}]] (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  config block "list" (Optional) {

    public_key block "list" (Required) {
      format = string (Required)
      key = string (Optional)
    }

    subject_config block "list" (Required) {

      subject block "list" (Required) {
        common_name = string (Required)
        organization = string (Required)
        country_code = string (Optional)
        locality = string (Optional)
        organizational_unit = string (Optional)
        postal_code = string (Optional)
        province = string (Optional)
        street_address = string (Optional)
      }

      subject_alt_name block "list" (Optional) {
        dns_names = ['list', 'string'] (Optional)
        email_addresses = ['list', 'string'] (Optional)
        ip_addresses = ['list', 'string'] (Optional)
        uris = ['list', 'string'] (Optional)
      }
    }

    subject_key_id block "list" (Optional) {
      key_id = string (Optional)
    }

    x509_config block "list" (Required) {
      aia_ocsp_servers = ['list', 'string'] (Optional)

      additional_extensions block "list" (Optional) {
        critical = bool (Required)
        value = string (Required)

        object_id block "list" (Required) {
          object_id_path = ['list', 'number'] (Required)
        }
      }

      ca_options block "list" (Optional) {
        is_ca = bool (Optional)
        max_issuer_path_length = number (Optional)
        non_ca = bool (Optional)
        zero_max_issuer_path_length = bool (Optional)
      }

      key_usage block "list" (Required) {

        base_key_usage block "list" (Required) {
          cert_sign = bool (Optional)
          content_commitment = bool (Optional)
          crl_sign = bool (Optional)
          data_encipherment = bool (Optional)
          decipher_only = bool (Optional)
          digital_signature = bool (Optional)
          encipher_only = bool (Optional)
          key_agreement = bool (Optional)
          key_encipherment = bool (Optional)
        }

        extended_key_usage block "list" (Required) {
          client_auth = bool (Optional)
          code_signing = bool (Optional)
          email_protection = bool (Optional)
          ocsp_signing = bool (Optional)
          server_auth = bool (Optional)
          time_stamping = bool (Optional)
        }

        unknown_extended_key_usages block "list" (Optional) {
          object_id_path = ['list', 'number'] (Required)
        }
      }

      name_constraints block "list" (Optional) {
        critical = bool (Required)
        excluded_dns_names = ['list', 'string'] (Optional)
        excluded_email_addresses = ['list', 'string'] (Optional)
        excluded_ip_ranges = ['list', 'string'] (Optional)
        excluded_uris = ['list', 'string'] (Optional)
        permitted_dns_names = ['list', 'string'] (Optional)
        permitted_email_addresses = ['list', 'string'] (Optional)
        permitted_ip_ranges = ['list', 'string'] (Optional)
        permitted_uris = ['list', 'string'] (Optional)
      }

      policy_ids block "list" (Optional) {
        object_id_path = ['list', 'number'] (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
