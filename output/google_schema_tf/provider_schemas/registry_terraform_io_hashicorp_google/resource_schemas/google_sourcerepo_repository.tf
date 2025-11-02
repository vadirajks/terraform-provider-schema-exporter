resource "google_sourcerepo_repository" "name" {
  name = string (Required)
  create_ignore_already_exists = bool (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  size = number (Computed)
  url = string (Computed)

  pubsub_configs block "set" (Optional) {
    message_format = string (Required)
    topic = string (Required)
    service_account_email = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
