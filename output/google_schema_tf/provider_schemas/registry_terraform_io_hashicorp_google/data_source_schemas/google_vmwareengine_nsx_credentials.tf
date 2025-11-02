data "google_vmwareengine_nsx_credentials" "name" {
  parent = string (Required)
  id = string (Optional, Computed)
  password = string (Computed)
  username = string (Computed)
}
