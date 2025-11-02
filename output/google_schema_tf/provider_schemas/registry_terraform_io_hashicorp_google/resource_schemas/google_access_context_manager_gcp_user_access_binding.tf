resource "google_access_context_manager_gcp_user_access_binding" "name" {
  group_key = string (Required)
  organization_id = string (Required)
  access_levels = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  name = string (Computed)

  scoped_access_settings block "list" (Optional) {

    active_settings block "list" (Optional) {
      access_levels = ['list', 'string'] (Optional)

      session_settings block "list" (Optional) {
        max_inactivity = string (Optional)
        session_length = string (Optional)
        session_length_enabled = bool (Optional)
        session_reauth_method = string (Optional)
        use_oidc_max_age = bool (Optional)
      }
    }

    dry_run_settings block "list" (Optional) {
      access_levels = ['list', 'string'] (Optional)
    }

    scope block "list" (Optional) {

      client_scope block "list" (Optional) {

        restricted_client_application block "list" (Optional) {
          client_id = string (Optional)
          name = string (Optional)
        }
      }
    }
  }

  session_settings block "list" (Optional) {
    max_inactivity = string (Optional)
    session_length = string (Optional)
    session_length_enabled = bool (Optional)
    session_reauth_method = string (Optional)
    use_oidc_max_age = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
