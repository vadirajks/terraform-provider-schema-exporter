resource "google_pubsub_schema_iam_member" "name" {
  member = string (Required)
  role = string (Required)
  schema = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
