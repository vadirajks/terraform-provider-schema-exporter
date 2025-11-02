resource "google_pubsub_subscription_iam_binding" "name" {
  members = ['set', 'string'] (Required)
  role = string (Required)
  subscription = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
