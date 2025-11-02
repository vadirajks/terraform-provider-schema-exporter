data "google_sourcerepo_repository" "name" {
  name = string (Required)
  create_ignore_already_exists = bool (Computed)
  id = string (Optional, Computed)
  project = string (Optional)
  pubsub_configs = ['set', ['object', {'message_format': 'string', 'service_account_email': 'string', 'topic': 'string'}]] (Computed)
  size = number (Computed)
  url = string (Computed)
}
