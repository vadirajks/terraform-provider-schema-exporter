resource "google_healthcare_dicom_store_iam_policy" "name" {
  dicom_store_id = string (Required)
  policy_data = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
}
