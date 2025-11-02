resource "google_iam_workforce_pool_iam_member" "name" {
  member = string (Required)
  role = string (Required)
  workforce_pool_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Required)
    title = string (Required)
    description = string (Optional)
  }
}
