resource "google_cloudfunctions_function_iam_binding" "name" {
  cloud_function = string (Required)
  members = ['set', 'string'] (Required)
  role = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
