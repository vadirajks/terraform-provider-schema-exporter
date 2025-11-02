resource "google_dataplex_zone_iam_policy" "name" {
  dataplex_zone = string (Required)
  lake = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  location = string (Optional, Computed)
  project = string (Optional, Computed)
}
