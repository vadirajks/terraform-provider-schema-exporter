resource "google_clouddomains_registration" "name" {
  domain_name = string (Required)
  location = string (Required)
  contact_notices = ['list', 'string'] (Optional)
  create_time = string (Computed)
  domain_notices = ['list', 'string'] (Optional)
  effective_labels = ['map', 'string'] (Computed)
  expire_time = string (Computed)
  id = string (Optional, Computed)
  issues = ['list', 'string'] (Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  register_failure_reason = string (Computed)
  state = string (Computed)
  supported_privacy = ['list', 'string'] (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  contact_settings block "list" (Required) {
    privacy = string (Required)

    admin_contact block "list" (Required) {
      email = string (Required)
      phone_number = string (Required)
      fax_number = string (Optional)

      postal_address block "list" (Required) {
        region_code = string (Required)
        address_lines = ['list', 'string'] (Optional)
        administrative_area = string (Optional)
        locality = string (Optional)
        organization = string (Optional)
        postal_code = string (Optional)
        recipients = ['list', 'string'] (Optional)
      }
    }

    registrant_contact block "list" (Required) {
      email = string (Required)
      phone_number = string (Required)
      fax_number = string (Optional)

      postal_address block "list" (Required) {
        region_code = string (Required)
        address_lines = ['list', 'string'] (Optional)
        administrative_area = string (Optional)
        locality = string (Optional)
        organization = string (Optional)
        postal_code = string (Optional)
        recipients = ['list', 'string'] (Optional)
      }
    }

    technical_contact block "list" (Required) {
      email = string (Required)
      phone_number = string (Required)
      fax_number = string (Optional)

      postal_address block "list" (Required) {
        region_code = string (Required)
        address_lines = ['list', 'string'] (Optional)
        administrative_area = string (Optional)
        locality = string (Optional)
        organization = string (Optional)
        postal_code = string (Optional)
        recipients = ['list', 'string'] (Optional)
      }
    }
  }

  dns_settings block "list" (Optional) {

    custom_dns block "list" (Optional) {
      name_servers = ['list', 'string'] (Required)

      ds_records block "list" (Optional) {
        algorithm = string (Optional)
        digest = string (Optional)
        digest_type = string (Optional)
        key_tag = number (Optional)
      }
    }

    glue_records block "list" (Optional) {
      host_name = string (Required)
      ipv4_addresses = ['list', 'string'] (Optional)
      ipv6_addresses = ['list', 'string'] (Optional)
    }
  }

  management_settings block "list" (Optional) {
    preferred_renewal_method = string (Optional, Computed)
    renewal_method = string (Computed)
    transfer_lock_state = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  yearly_price block "list" (Required) {
    currency_code = string (Optional)
    units = string (Optional)
  }
}
