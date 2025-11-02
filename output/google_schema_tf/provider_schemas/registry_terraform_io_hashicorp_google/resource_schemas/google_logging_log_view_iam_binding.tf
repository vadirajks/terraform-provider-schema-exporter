resource "google_logging_log_view_iam_binding" "name" {
  bucket = string (Required)
  members = ['set', 'string'] (Required)
  name = string (Required)
  parent = string (Required)
  role = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
