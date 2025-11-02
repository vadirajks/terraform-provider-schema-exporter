resource "google_pubsub_subscription_iam_policy" "name" {
  policy_data = string (Required)
  subscription = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
