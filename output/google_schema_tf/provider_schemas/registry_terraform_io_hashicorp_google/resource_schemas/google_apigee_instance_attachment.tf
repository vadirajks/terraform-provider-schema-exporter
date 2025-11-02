resource "google_apigee_instance_attachment" "name" {
  environment = string (Required)
  instance_id = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
