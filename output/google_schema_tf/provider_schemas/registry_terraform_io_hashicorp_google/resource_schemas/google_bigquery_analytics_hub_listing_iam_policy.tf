resource "google_bigquery_analytics_hub_listing_iam_policy" "name" {
  data_exchange_id = string (Required)
  listing_id = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
