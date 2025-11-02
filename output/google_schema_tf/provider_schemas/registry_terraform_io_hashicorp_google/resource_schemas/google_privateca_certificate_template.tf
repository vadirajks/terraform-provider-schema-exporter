resource "google_privateca_certificate_template" "name" {
  location = string (Required)
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  maximum_lifetime = string (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  identity_constraints block "list" (Optional) {
    allow_subject_alt_names_passthrough = bool (Required)
    allow_subject_passthrough = bool (Required)

    cel_expression block "list" (Optional) {
      description = string (Optional)
      expression = string (Optional)
      location = string (Optional)
      title = string (Optional)
    }
  }

  passthrough_extensions block "list" (Optional) {
    known_extensions = ['list', 'string'] (Optional)

    additional_extensions block "list" (Optional) {
      object_id_path = ['list', 'number'] (Required)
    }
  }

  predefined_values block "list" (Optional) {
    aia_ocsp_servers = ['list', 'string'] (Optional)

    additional_extensions block "list" (Optional) {
      value = string (Required)
      critical = bool (Optional)

      object_id block "list" (Required) {
        object_id_path = ['list', 'number'] (Required)
      }
    }

    ca_options block "list" (Optional) {
      is_ca = bool (Optional)
      max_issuer_path_length = number (Optional)
      null_ca = bool (Optional)
      zero_max_issuer_path_length = bool (Optional)
    }

    key_usage block "list" (Optional) {

      base_key_usage block "list" (Optional) {
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

      extended_key_usage block "list" (Optional) {
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

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
