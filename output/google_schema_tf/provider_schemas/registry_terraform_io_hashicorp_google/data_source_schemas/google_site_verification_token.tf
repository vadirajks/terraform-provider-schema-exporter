data "google_site_verification_token" "name" {
  identifier = string (Required)
  type = string (Required)
  verification_method = string (Required)
  id = string (Optional, Computed)
  token = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
