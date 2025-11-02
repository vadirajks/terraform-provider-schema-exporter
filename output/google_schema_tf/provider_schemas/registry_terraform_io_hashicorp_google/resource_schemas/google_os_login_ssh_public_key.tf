resource "google_os_login_ssh_public_key" "name" {
  key = string (Required)
  user = string (Required)
  expiration_time_usec = string (Optional)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
