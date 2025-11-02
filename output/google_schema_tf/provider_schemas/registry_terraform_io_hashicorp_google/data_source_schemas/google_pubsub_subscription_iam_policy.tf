data "google_pubsub_subscription_iam_policy" "name" {
  subscription = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
