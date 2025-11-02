resource "google_identity_platform_tenant" "name" {
  display_name = string (Required)
  allow_password_signup = bool (Optional)
  disable_auth = bool (Optional)
  enable_email_link_signin = bool (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  client block "list" (Optional) {

    permissions block "list" (Optional) {
      disabled_user_deletion = bool (Optional)
      disabled_user_signup = bool (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
