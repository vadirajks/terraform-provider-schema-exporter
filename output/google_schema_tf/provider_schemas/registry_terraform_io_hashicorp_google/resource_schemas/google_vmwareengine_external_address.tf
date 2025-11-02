resource "google_vmwareengine_external_address" "name" {
  internal_ip = string (Required)
  name = string (Required)
  parent = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  external_ip = string (Computed)
  id = string (Optional, Computed)
  state = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
