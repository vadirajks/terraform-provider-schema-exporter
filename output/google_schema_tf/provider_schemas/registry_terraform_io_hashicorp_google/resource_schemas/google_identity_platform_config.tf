resource "google_identity_platform_config" "name" {
  authorized_domains = ['list', 'string'] (Optional, Computed)
  autodelete_anonymous_users = bool (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  blocking_functions block "list" (Optional) {

    forward_inbound_credentials block "list" (Optional) {
      access_token = bool (Optional)
      id_token = bool (Optional)
      refresh_token = bool (Optional)
    }

    triggers block "set" (Required) {
      event_type = string (Required)
      function_uri = string (Required)
      update_time = string (Computed)
    }
  }

  client block "list" (Optional) {
    api_key = string (Computed)
    firebase_subdomain = string (Computed)

    permissions block "list" (Optional) {
      disabled_user_deletion = bool (Optional)
      disabled_user_signup = bool (Optional)
    }
  }

  mfa block "list" (Optional) {
    enabled_providers = ['list', 'string'] (Optional)
    state = string (Optional, Computed)

    provider_configs block "list" (Optional) {
      state = string (Optional, Computed)

      totp_provider_config block "list" (Optional) {
        adjacent_intervals = number (Optional)
      }
    }
  }

  monitoring block "list" (Optional) {

    request_logging block "list" (Optional) {
      enabled = bool (Optional)
    }
  }

  multi_tenant block "list" (Optional) {
    allow_tenants = bool (Optional)
    default_tenant_location = string (Optional)
  }

  quota block "list" (Optional) {

    sign_up_quota_config block "list" (Optional) {
      quota = number (Optional)
      quota_duration = string (Optional)
      start_time = string (Optional)
    }
  }

  sign_in block "list" (Optional) {
    allow_duplicate_emails = bool (Optional)
    hash_config = ['list', ['object', {'algorithm': 'string', 'memory_cost': 'number', 'rounds': 'number', 'salt_separator': 'string', 'signer_key': 'string'}]] (Computed)

    anonymous block "list" (Optional) {
      enabled = bool (Required)
    }

    email block "list" (Optional) {
      enabled = bool (Required)
      password_required = bool (Optional)
    }

    phone_number block "list" (Optional) {
      enabled = bool (Required)
      test_phone_numbers = ['map', 'string'] (Optional)
    }
  }

  sms_region_config block "list" (Optional) {

    allow_by_default block "list" (Optional) {
      disallowed_regions = ['list', 'string'] (Optional)
    }

    allowlist_only block "list" (Optional) {
      allowed_regions = ['list', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
