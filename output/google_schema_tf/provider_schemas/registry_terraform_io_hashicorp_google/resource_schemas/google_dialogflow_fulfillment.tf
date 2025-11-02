resource "google_dialogflow_fulfillment" "name" {
  display_name = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  features block "list" (Optional) {
    type = string (Required)
  }

  generic_web_service block "list" (Optional) {
    uri = string (Required)
    password = string (Optional)
    request_headers = ['map', 'string'] (Optional)
    username = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
