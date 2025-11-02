data "google_iam_workforce_pool_iam_policy" "name" {
  workforce_pool_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  policy_data = string (Computed)
}
