resource "google_apigee_nat_address" "name" {
  instance_id = string (Required)
  name = string (Required)
  activate = bool (Optional)
  id = string (Optional, Computed)
  ip_address = string (Computed)
  state = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
