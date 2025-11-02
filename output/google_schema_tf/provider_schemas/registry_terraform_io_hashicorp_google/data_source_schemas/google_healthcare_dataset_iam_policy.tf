data "google_healthcare_dataset_iam_policy" "name" {
  dataset_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
