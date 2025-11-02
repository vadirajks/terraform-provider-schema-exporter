data "google_healthcare_dicom_store_iam_policy" "name" {
  dicom_store_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  policy_data = string (Computed)
}
