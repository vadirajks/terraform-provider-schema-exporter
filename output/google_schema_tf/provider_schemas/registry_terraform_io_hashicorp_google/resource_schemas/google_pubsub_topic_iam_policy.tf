resource "google_pubsub_topic_iam_policy" "name" {
  policy_data = string (Required)
  topic = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
