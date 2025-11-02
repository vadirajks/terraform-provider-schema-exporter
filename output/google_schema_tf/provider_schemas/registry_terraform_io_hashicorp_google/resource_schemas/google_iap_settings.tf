resource "google_iap_settings" "name" {
  name = string (Required)
  id = string (Optional, Computed)

  access_settings block "list" (Optional) {
    identity_sources = ['list', 'string'] (Optional)

    allowed_domains_settings block "list" (Optional) {
      domains = ['list', 'string'] (Optional)
      enable = bool (Optional)
    }

    cors_settings block "list" (Optional) {
      allow_http_options = bool (Optional)
    }

    gcip_settings block "list" (Optional) {
      login_page_uri = string (Optional)
      tenant_ids = ['list', 'string'] (Optional)
    }

    oauth_settings block "list" (Optional) {
      login_hint = string (Optional)
      programmatic_clients = ['list', 'string'] (Optional)
    }

    reauth_settings block "list" (Optional) {
      max_age = string (Required)
      method = string (Required)
      policy_type = string (Required)
    }

    workforce_identity_settings block "list" (Optional) {
      workforce_pools = ['list', 'string'] (Optional)

      oauth2 block "list" (Optional) {
        client_id = string (Optional)
        client_secret = string (Optional)
        client_secret_sha256 = string (Computed)
      }
    }
  }

  application_settings block "list" (Optional) {
    cookie_domain = string (Optional)

    access_denied_page_settings block "list" (Optional) {
      access_denied_page_uri = string (Optional)
      generate_troubleshooting_uri = bool (Optional)
      remediation_token_generation_enabled = bool (Optional)
    }

    attribute_propagation_settings block "list" (Optional) {
      enable = bool (Optional)
      expression = string (Optional)
      output_credentials = ['list', 'string'] (Optional)
    }

    csm_settings block "list" (Optional) {
      rctoken_aud = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
