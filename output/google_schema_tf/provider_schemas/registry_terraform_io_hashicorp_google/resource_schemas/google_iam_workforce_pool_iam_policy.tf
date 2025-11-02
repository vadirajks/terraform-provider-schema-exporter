resource "google_iam_workforce_pool_iam_policy" "name" {
  policy_data = string (Required)
  workforce_pool_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
}
