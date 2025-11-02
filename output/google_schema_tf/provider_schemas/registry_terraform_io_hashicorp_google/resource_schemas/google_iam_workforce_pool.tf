resource "google_iam_workforce_pool" "name" {
  location = string (Required)
  parent = string (Required)
  workforce_pool_id = string (Required)
  description = string (Optional)
  disabled = bool (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  session_duration = string (Optional)
  state = string (Computed)

  access_restrictions block "list" (Optional) {
    disable_programmatic_signin = bool (Optional)

    allowed_services block "list" (Optional) {
      domain = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
