data "google_pubsub_topic_iam_policy" "name" {
  topic = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
