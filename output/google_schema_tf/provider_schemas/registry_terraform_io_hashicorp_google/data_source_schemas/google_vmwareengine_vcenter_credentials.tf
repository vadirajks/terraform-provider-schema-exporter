data "google_vmwareengine_vcenter_credentials" "name" {
  parent = string (Required)
  id = string (Optional, Computed)
  password = string (Computed)
  username = string (Computed)
}
