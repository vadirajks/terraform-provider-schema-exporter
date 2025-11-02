resource "google_privateca_certificate_authority" "name" {
  certificate_authority_id = string (Required)
  location = string (Required)
  pool = string (Required)
  access_urls = ['list', ['object', {'ca_certificate_access_url': 'string', 'crl_access_urls': ['list', 'string']}]] (Computed)
  create_time = string (Computed)
  deletion_protection = bool (Optional)
  desired_state = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  gcs_bucket = string (Optional)
  id = string (Optional, Computed)
  ignore_active_certificates_on_deletion = bool (Optional)
  labels = ['map', 'string'] (Optional)
  lifetime = string (Optional)
  name = string (Computed)
  pem_ca_certificate = string (Optional)
  pem_ca_certificates = ['list', 'string'] (Computed)
  project = string (Optional, Computed)
  skip_grace_period = bool (Optional)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  type = string (Optional)
  update_time = string (Computed)

  config block "list" (Required) {

    subject_config block "list" (Required) {

      subject block "list" (Required) {
        common_name = string (Required)
        country_code = string (Optional)
        locality = string (Optional)
        organization = string (Optional)
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

      ca_options block "list" (Required) {
        is_ca = bool (Required)
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

  key_spec block "list" (Required) {
    algorithm = string (Optional)
    cloud_kms_key_version = string (Optional)
  }

  subordinate_config block "list" (Optional) {
    certificate_authority = string (Optional)

    pem_issuer_chain block "list" (Optional) {
      pem_certificates = ['list', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  user_defined_access_urls block "list" (Optional) {
    aia_issuing_certificate_urls = ['list', 'string'] (Optional)
    crl_access_urls = ['list', 'string'] (Optional)
  }
}
