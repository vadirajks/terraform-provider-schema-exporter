data "google_vmwareengine_external_address" "name" {
  name = string (Required)
  parent = string (Required)
  create_time = string (Computed)
  description = string (Computed)
  external_ip = string (Computed)
  id = string (Optional, Computed)
  internal_ip = string (Computed)
  state = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)
}
