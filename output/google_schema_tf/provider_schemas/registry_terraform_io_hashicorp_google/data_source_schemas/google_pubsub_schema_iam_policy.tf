data "google_pubsub_schema_iam_policy" "name" {
  schema = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
