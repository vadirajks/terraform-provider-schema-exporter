data "google_dataplex_zone_iam_policy" "name" {
  dataplex_zone = string (Required)
  lake = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  policy_data = string (Computed)
  project = string (Optional, Computed)
}
