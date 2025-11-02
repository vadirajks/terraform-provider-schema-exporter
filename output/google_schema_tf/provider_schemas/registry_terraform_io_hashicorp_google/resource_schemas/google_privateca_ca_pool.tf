resource "google_privateca_ca_pool" "name" {
  location = string (Required)
  name = string (Required)
  tier = string (Required)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  encryption_spec block "list" (Optional) {
    cloud_kms_key = string (Optional)
  }

  issuance_policy block "list" (Optional) {
    backdate_duration = string (Optional)
    maximum_lifetime = string (Optional)

    allowed_issuance_modes block "list" (Optional) {
      allow_config_based_issuance = bool (Required)
      allow_csr_based_issuance = bool (Required)
    }

    allowed_key_types block "list" (Optional) {

      elliptic_curve block "list" (Optional) {
        signature_algorithm = string (Required)
      }

      rsa block "list" (Optional) {
        max_modulus_size = string (Optional)
        min_modulus_size = string (Optional)
      }
    }

    baseline_values block "list" (Optional) {
      aia_ocsp_servers = ['list', 'string'] (Optional)

      additional_extensions block "list" (Optional) {
        critical = bool (Required)
        value = string (Required)

        object_id block "list" (Required) {
          object_id_path = ['list', 'number'] (Required)
        }
      }

      ca_options block "list" (Required) {
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

    identity_constraints block "list" (Optional) {
      allow_subject_alt_names_passthrough = bool (Required)
      allow_subject_passthrough = bool (Required)

      cel_expression block "list" (Optional) {
        expression = string (Required)
        description = string (Optional)
        location = string (Optional)
        title = string (Optional)
      }
    }
  }

  publishing_options block "list" (Optional) {
    publish_ca_cert = bool (Required)
    publish_crl = bool (Required)
    encoding_format = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
