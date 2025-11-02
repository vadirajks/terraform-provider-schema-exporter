resource "google_pubsub_schema_iam_policy" "name" {
  policy_data = string (Required)
  schema = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
}
